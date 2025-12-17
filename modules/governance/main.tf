resource "azurerm_policy_definition" "allowed_locations" {
  name         = "allowed-azure-locations"
  policy_type = "Custom"
  mode         = "Indexed"
  display_name = "Allowed Azure Regions"
  policy_rule  = file("${path.module}/../../policies/allowed-locations.json")
}

resource "azurerm_policy_assignment" "rg_policy" {
  name                 = "restrict-regions"
  scope                = var.resource_group_id
  policy_definition_id = azurerm_policy_definition.allowed_locations.id

  parameters = jsonencode({
    allowedLocations = {
      value = var.allowed_locations
    }
  })
}
