variable "resource_group_name" {
  description = "Nazwa grupy zasobów"
}

variable "location" {
  description = "Region, w którym będą tworzone zasoby"
}

variable "storage_account_name" {
  description = "Nazwa konta magazynu"
}

variable "account_tier" {
  description = "Typ konta magazynu"
}

variable "account_replication_type" {
  description = "Typ replikacji konta magazynu"
}

variable "container_name" {
  description = "Nazwa kontenera w magazynie"
}

variable "blob_name" {
  description = "Nazwa bloba"
}

variable "blob_source" {
  description = "Ścieżka do lokalnego pliku lub innego źródła bloba"
}

