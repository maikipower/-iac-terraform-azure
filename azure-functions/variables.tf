variable "resource_group_name" {
  description = "Nazwa grupy zasobow"
}

variable "location" {
  description = "Lokalizacja"
}

variable "storage_account_name" {
  description = "Nazwa konta magazynu"
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

