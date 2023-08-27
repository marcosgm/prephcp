import {
  to = azurerm_resource_group.shared-svcs-rg
  id = "/subscriptions/548e8125-42ac-4377-a62e-1f6ae11d4f0d/resourceGroups/shared-svcs-rg"
}
import {
  to = azurerm_key_vault.sharedkvforapps 
  id = "/subscriptions/548e8125-42ac-4377-a62e-1f6ae11d4f0d/resourceGroups/shared-svcs-rg/providers/Microsoft.KeyVault/vaults/sharedkvforapps"
}

# resource "azurerm_resource_group" "shared-svcs-rg" {
#   name     = "shared-svcs-rg"
#   location = "Canada Central"
# }

# resource "azurerm_key_vault" "sharedkvforapps" {
#   name     = "sharedkvforapps"
#   location = "Canada Central"
#   resource_group_name = azurerm_resource_group.shared-svcs-rg.name
# }