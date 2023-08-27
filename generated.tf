# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "/subscriptions/548e8125-42ac-4377-a62e-1f6ae11d4f0d/resourceGroups/shared-svcs-rg/providers/Microsoft.KeyVault/vaults/sharedkvforapps"
resource "azurerm_key_vault" "sharedkvforapps" {
  access_policy                   = []
  enable_rbac_authorization       = true
  enabled_for_deployment          = false
  enabled_for_disk_encryption     = false
  enabled_for_template_deployment = true
  location                        = "canadacentral"
  name                            = "sharedkvforapps"
  public_network_access_enabled   = true
  purge_protection_enabled        = false
  resource_group_name             = "shared-svcs-rg"
  sku_name                        = "standard"
  soft_delete_retention_days      = 90
  tags                            = {}
  tenant_id                       = "99ff697a-2f1a-492b-bb52-feed52fa7b3c"
  network_acls {
    bypass                     = "AzureServices"
    default_action             = "Allow"
    ip_rules                   = []
    virtual_network_subnet_ids = []
  }
}

# __generated__ by Terraform from "/subscriptions/548e8125-42ac-4377-a62e-1f6ae11d4f0d/resourceGroups/shared-svcs-rg"
resource "azurerm_resource_group" "shared-svcs-rg" {
  location   = "canadacentral"
  managed_by = null
  name       = "shared-svcs-rg"
  tags       = {}
}
