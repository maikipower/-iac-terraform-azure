variable "resource_group_name" {
  type    = string
  default = "example-rg"
}

variable "location" {
  type    = string
  default = "East US"
}

variable "storage_account_name" {
  type    = string
  default = "examplestorage"
}

variable "storage_account_tier" {
  description = "Typ konta magazynu"
}

variable "storage_account_replication_type" {
  description = "Typ replikacji konta magazynu"
}

variable "app_service_plan_name" {
  description = "Nazwa planu uslugi"
}

variable "function_app_name" {
  description = "Nazwa aplikacji"
}

variable "function_name" {
  description = "nazwa funkcji"
}
variable "storage_account_access_key" {
  description = "Klucz dostepowy magazynu"
}
variable "os_type" {
  type    = string
  default = "Linux"
}

variable "sku_name" {
  type    = string
  default = "F1" 
}

