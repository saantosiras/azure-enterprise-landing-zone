output "nsg_id" {
  description = "Default NSG ID"
  value       = azurerm_network_security_group.default_nsg.id
}
