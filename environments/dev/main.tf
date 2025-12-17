provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "dev_rg" {
  name     = var.resource_group_name
  location = var.location
}

module "network" {
  source              = "../../modules/network"
  resource_group_name = azurerm_resource_group.dev_rg.name
  location            = var.location
  hub_vnet_cidr       = var.hub_vnet_cidr
  spoke_vnet_cidr     = var.spoke_vnet_cidr
}
module "security" {
  source              = "../../modules/security"
  resource_group_name = azurerm_resource_group.dev_rg.name
  location            = var.location
}

