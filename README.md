## Providers

| Name | Version |
|------|---------|
| azurerm | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| account\_kind | Defines the Kind of account. Valid options are BlobStorage, BlockBlobStorage, FileStorage,     Storage and StorageV2. Changing this forces a new resource to be created. Defaults to StorageV2. | `string` | `"StorageV2"` | no |
| account\_replication\_type | Valid values -   Local: LRS   Zonal: ZRS (Recommended)   Geo: GRS   GeoZone: GZRS   https://docs.microsoft.com/en-us/azure/storage/common/storage-redundancy | `string` | `"ZRS"` | no |
| enable\_https\_traffic\_only | Boolean flag which forces HTTPS if enabled, see here for more information | `bool` | `true` | no |
| name | A name which will be prefixed by the resource group name | `any` | n/a | yes |
| resource\_group\_name | The name of the resource group which all resources belong to. | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| primary\_web\_endpoint | n/a |

