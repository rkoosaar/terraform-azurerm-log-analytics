variable "az_la_ws_name" {
  description = "Specifies the name of the Log Analytics Workspace"
  type        = string
  default     = null
}

variable "az_la_ws_rg_name" {
  description = " The name of the resource group in which the Log Analytics workspace is created"
  type        = string
  default     = null
}

variable "az_la_ws_location" {
  description = "Specifies the supported Azure location where the resource exists"
  type        = string
  default     = null
}

variable "az_la_ws_sku" {
  description = "Specifies the Sku of the Log Analytics Workspace. Possible values are Free, PerNode, Premium, Standard, Standalone, Unlimited, and PerGB2018 (new Sku as of 2018-04-03). Defaults to PerGB2018"
  type        = string
  default     = "PerGB2018"
}

variable "az_la_ws_retention_in_days" {
  description = "The workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730"
  type        = number
  default     = 7
}

variable "az_tags" {
  description = "A mapping of tags which should be assigned to all resources"
  type        = map(any)
  default     = {}
}