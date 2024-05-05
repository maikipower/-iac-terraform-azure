terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "westus2"
}
resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
}

resource "azurerm_service_plan" "azs" {

  name                = var.app_service_plan_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku_name = var.sku_name
  os_type = var.os_type
}


resource "azurerm_function_app" "af" {
  name                = var.function_app_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  storage_account_access_key = azurerm_storage_account.sa.primary_access_key
  storage_account_name = azurerm_storage_account.sa.name
  app_service_plan_id = azurerm_service_plan.azs.id
  version             = "~3"
}

resource "azurerm_function_app_function" "aff" {
  name                       = var.function_name
  config_json                = "null"
  function_app_id            = azurerm_function_app.af.id
}

