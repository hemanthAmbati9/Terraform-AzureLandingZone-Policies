data "azurerm_policy_definition_built_in" "test1" {
  display_name = "Keys should be backed by a hardware security module (HSM)"
}

data "azurerm_policy_definition_built_in" "test2" {
  display_name = "Azure Key Vault should disable public network access"
}

data "azurerm_policy_definition_built_in" "test3" {
  display_name = "Azure Key Vault should have firewall enabled"
}
data "azurerm_policy_definition_built_in" "test4" {
  display_name = "Azure Key Vault should use RBAC permission model"
}
data "azurerm_policy_definition_built_in" "test5" {
  display_name = "Azure Key Vaults should use private link"
}
