output "primary_web_host" {
  value = azurerm_storage_account.storage_account.primary_web_host
}

output "primary_blob_host" {
  value = azurerm_storage_account.storage_account.primary_blob_host
}