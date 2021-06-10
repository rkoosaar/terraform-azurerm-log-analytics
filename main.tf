locals {
  default_tags = {}
  all_tags     = merge(local.default_tags, var.az_tags)
}

resource "azurerm_log_analytics_workspace" "az-la-ws" {
  name                = var.az_la_ws_name
  resource_group_name = var.az_la_ws_rg_name
  location            = var.az_la_ws_location
  sku                 = var.az_la_ws_sku
  retention_in_days   = var.az_la_ws_retention_in_days

  tags = local.all_tags
}
