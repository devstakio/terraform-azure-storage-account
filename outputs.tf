output "storage_account_name" {
  value = azurerm_storage_account.storage_account.name
}

output "primary_web_host" {
  value = azurerm_storage_account.storage_account.primary_web_host
}

output "primary_blob_host" {
  value = azurerm_storage_account.storage_account.primary_blob_host
}

output "service_principal" {
  value = var.enable_delegator_service_pincipal ? {
    application_id = azuread_service_principal.service_principal.*.application_id[0]
    password       = azuread_service_principal_password.service_principal_password.*.value[0]
  } : {}
}

output "access_key" {
  value = azurerm_storage_account.storage_account.primary_access_key
}

output "containers" {
  value = azurerm_storage_container.storage_container.*.name
}