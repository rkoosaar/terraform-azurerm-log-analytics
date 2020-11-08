module "az-log-analytics" {
  source = "../modules/terraform-azurerm-log-analytics"

  az_la_ws_name     = "az-log-analytics-ws-name"
  az_la_ws_rg_name  = module.az-resource-group.az-rg-name
  az_la_ws_location = module.az-resource-group.az-rg-location
  #az_la_ws_sku = "PerGB2018"
  az_la_ws_retention_in_days = 180

  az_tags = {
    Environment   = "Development"
    CostCenter    = "Department"
    ResourceOwner = "Example Owner"
    Project       = "Project Name"
    Role          = "Resource Group"
  }
}