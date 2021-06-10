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