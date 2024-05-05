# main.tf



# Zasób grupy zasobów
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

# Zasób konta magazynu
resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  location                 = azurerm_resource_group.example.location
  }

# Zasób planu usługi
resource "azurerm_app_service_plan" "example" {
  name                = var.service_plan_name
  location            = azurerm_resource_group.example.location

  sku {
    tier = var.service_plan_sku_tier
    size = var.service_plan_sku_size
  }
}

# Zasób funkcji aplikacji Azure (Linux)
resource "azurerm_function_app" "example" {
  name                       = var.function_app_name
  location                   = azurerm_resource_group.example.location
}

# Zasób funkcji aplikacji
resource "azurerm_function_app_function" "example" {
  name                     = var.function_name
  resource_group_name      = azurerm_resource_group.example.name
  functionapp_id           = azurerm_function_app.example.id
  app_settings             = { }
  storage_account_name     = azurerm_storage_account.example.name
  storage_account_key      = azurerm_storage_account.example.primary_access_key
  storage_account_container_name = azurerm_function_app.example.name
}

