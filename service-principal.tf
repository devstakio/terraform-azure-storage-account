resource "random_password" "password" {

  length  = 16
  special = false
}

resource "random_string" "random" {
  length  = 8
  special = false
}

resource "azuread_application" "application" {
  count = var.enable_delegator_service_pincipal ? 1 : 0

  name = "${data.azurerm_resource_group.resource_group.name}-storage-${random_string.random.result}"
}

resource "azuread_service_principal" "service_principal" {
  count = var.enable_delegator_service_pincipal ? 1 : 0

  provider       = azuread
  application_id = azuread_application.application[0].application_id
}

resource "azuread_service_principal_password" "service_principal_password" {
  count = var.enable_delegator_service_pincipal ? 1 : 0

  provider             = azuread
  service_principal_id = azuread_service_principal.service_principal.*.id[0]
  value                = random_password.password.result
  end_date             = "2021-01-01T01:02:03Z"
}

resource "azurerm_role_assignment" "storage_blob_delegator" {
  count = var.enable_delegator_service_pincipal ? 1 : 0

  scope = azurerm_storage_account.storage_account.id
  //  role_definition_name = "Storage Blob Delegator"
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = azuread_service_principal.service_principal.*.id[0]
}