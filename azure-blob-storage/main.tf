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
  location = var.location
}

resource "azurerm_storage_account" "sc" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

resource "azurerm_storage_container" "asc" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.sc.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "asb" {
  name                   = var.blob_name
  storage_account_name   = azurerm_storage_account.sc.name
  storage_container_name = azurerm_storage_container.asc.name
  type                   = "Block"
  source                 = var.blob_source
}

