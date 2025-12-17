terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}
resource "azurerm_virtual_network" "hub_vnet" {
  name                = "vnet-hub"
  address_space       = [var.hub_vnet_cidr]
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_virtual_network" "spoke_vnet" {
  name                = "vnet-spoke"
  address_space       = [var.spoke_vnet_cidr]
  location            = var.location
  resource_group_name = var.resource_group_name
}

