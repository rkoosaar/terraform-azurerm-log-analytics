# terraform-azurerm-log-analytics

Terraform module for creating and managing Azure Log Analytics resources

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Latest Release](https://img.shields.io/github/v/release/rkoosaar/terraform-azurerm-log-analytics?cacheSeconds=36)](https://github.com/rkoosaar/terraform-azurerm-log-analytics/releases/latest)
[![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/modules/rkoosaar/log-analytics/azurerm)

## Examples

```
module "az-log-analytics" {
  source = "../modules/terraform-azurerm-log-analytics"

  az_la_ws_name     = "az-log-analytics-ws-name"
  az_la_ws_rg_name  = "ResourceGroup-Name"
  az_la_ws_location = "UK South"
  #az_la_ws_sku = "PerGB2018"
  az_la_ws_retention_in_days = 180

  # use this if you are creating a resource group first using RG module
  #depends_on = [module.az-resource-group]

  az_tags = {
    Environment   = "Development"
    CostCenter    = "Department"
    ResourceOwner = "Example Owner"
    Project       = "Project Name"
    Role          = "Resource Group"
  }
}
```
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
| --- | --- |
| terraform | >= 1.0.0 |

## Providers

| Name | Version |
| --- | --- |
| azurerm | >= 2.62.1 |

## Inputs

| Name | Description | Type | Required |
| --- | --- | --- | --- |
| az\_la\_ws_name | Specifies the name of the Log Analytics Workspace | `string` | yes |
| az\_la\_ws\_rg\_name | The name of the resource group in which the Log Analytics workspace is created | `string` | yes |
| az\_la\_ws_location | Specifies the supported Azure location where the resource exists | `string` | yes |
| az\_la\_ws_sku | Specifies the Sku of the Log Analytics Workspace. Possible values are Free, PerNode, Premium, Standard, Standalone, Unlimited, and PerGB2018 (new Sku as of 2018-04-03). Defaults to PerGB2018 | `string` | no  |
| az\_la\_ws\_retention\_in_days | The workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730. Defaults to 7 | `number` | no  |
| az_tags | A mapping of tags which should be assigned to all resources | `map` | no  |

## Outputs

| Name | Description |
| --- | --- |
| az-la-ws-id | Resource azurerm_log_analytics_workspace id |
| az-la-ws-workspace-id | Resource azurerm_log_analytics_workspace id |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Help

**Got a question?**

File a GitHub [issue](https://github.com/rkoosaar/terraform-azurerm-log-analytics/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/rkoosaar/terraform-azurerm-log-analytics/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2021 Raiko Koosaar

### Contributors

[![Raiko Koosaar][rkoosaar_avatar]][rkoosaar_homepage]<br/>[Raiko Koosaar][rkoosaar_homepage]

[rkoosaar_homepage]: https://github.com/rkoosaar
[rkoosaar_avatar]: https://github.com/rkoosaar.png?size=150
[github]: https://github.com/rkoosaar
[share_email]: mailto:?subject=terraform-azurerm-log-analytics&body=https://github.com/rkoosaar/terraform-azurerm-log-analytics
