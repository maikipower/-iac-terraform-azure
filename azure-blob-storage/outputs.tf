output "blob_url" {
  value = "https://${azurerm_storage_account.sc.primary_blob_endpoint}/${azurerm_storage_container.asc.name}/${azurerm_storage_blob.asb.name}"
}

