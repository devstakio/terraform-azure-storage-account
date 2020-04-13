data "azurerm_resource_group" "resource_group" {
  name = var.resource_group_name
}

resource "azurerm_storage_account" "storage_account" {
  name                     = replace("${data.azurerm_resource_group.resource_group.name}-${var.name}", "-", "")
  resource_group_name      = data.azurerm_resource_group.resource_group.name
  location                 = data.azurerm_resource_group.resource_group.location
  account_tier             = "Standard"
  account_replication_type = var.account_replication_type
  account_kind = var.account_kind
  enable_https_traffic_only = var.enable_https_traffic_only

  static_website {
    index_document = "index.html"
    error_404_document = "404.html"
  }

  tags = data.azurerm_resource_group.resource_group.tags
}