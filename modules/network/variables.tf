variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "hub_vnet_cidr" {
  description = "CIDR for hub VNet"
  type        = string
}

variable "spoke_vnet_cidr" {
  description = "CIDR for spoke VNet"
  type        = string
}
