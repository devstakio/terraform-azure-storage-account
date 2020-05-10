<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| azuread | n/a |
| azurerm | n/a |
| random | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| account\_kind | Defines the Kind of account. Valid options are BlobStorage, BlockBlobStorage, FileStorage,     Storage and StorageV2. Changing this forces a new resource to be created. Defaults to StorageV2. | `string` | `"StorageV2"` | no |
| account\_replication\_type | Valid values -   Local: LRS   Zonal: ZRS (Recommended)   Geo: GRS   GeoZone: GZRS   https://docs.microsoft.com/en-us/azure/storage/common/storage-redundancy | `string` | `"ZRS"` | no |
| containers | A list of containers (folders) to create within the storage account | `list` | `[]` | no |
| enable\_delegator\_service\_pincipal | Creates a service princial with a Storage Blob Delegator permission. This allows user to create a user delegation     key, which is needed for signing URL's | `bool` | `false` | no |
| enable\_https\_traffic\_only | Boolean flag which forces HTTPS if enabled, see here for more information | `bool` | `true` | no |
| name | A name which will be prefixed by the resource group name | `any` | n/a | yes |
| resource\_group\_name | The name of the resource group which all resources belong to. | `any` | n/a | yes |
| static\_website | n/a | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| access\_key | n/a |
| containers | n/a |
| primary\_blob\_host | n/a |
| primary\_web\_host | n/a |
| service\_principal | n/a |
| storage\_account\_name | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
