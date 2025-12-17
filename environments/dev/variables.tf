variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name for Dev environment"
  type        = string
}

variable "hub_vnet_cidr" {
  description = "Hub VNet CIDR"
  type        = string
}

variable "spoke_vnet_cidr" {
  description = "Spoke VNet CIDR"
  type        = string
}
