variable "resource_group_name" {
  description = "The name of the resource group which all resources belong to."
}

variable "name" {
  description = "A name which will be prefixed by the resource group name"
}

variable "account_replication_type" {
  default = "ZRS"

  description = <<EOF
  Valid values -
  Local: LRS
  Zonal: ZRS (Recommended)
  Geo: GRS
  GeoZone: GZRS
  https://docs.microsoft.com/en-us/azure/storage/common/storage-redundancy
EOF
}

variable "account_kind" {
  default     = "StorageV2"
  description = <<EOF
    Defines the Kind of account. Valid options are BlobStorage, BlockBlobStorage, FileStorage,
    Storage and StorageV2. Changing this forces a new resource to be created. Defaults to StorageV2.
EOF
}

variable "enable_https_traffic_only" {
  default = true

  description = "Boolean flag which forces HTTPS if enabled, see here for more information"
}

variable "static_website" {
  default = false
}

variable "enable_delegator_service_pincipal" {
  default = false

  description = <<EOF
    Creates a service princial with a Storage Blob Delegator permission. This allows user to create a user delegation
    key, which is needed for signing URL's
EOF
}

variable "containers" {
  default = []

  description = "A list of containers (folders) to create within the storage account"
}