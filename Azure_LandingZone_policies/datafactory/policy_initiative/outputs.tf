output "initiative_id" {
  value = azurerm_policy_set_definition.example1.id
}

output "policy_id_1" {
  value = data.azurerm_policy_definition_built_in.policy1.id
}

output "policy_id_2" {
  value = data.azurerm_policy_definition_built_in.policy2.id
}

output "policy_id_3" {
  value = data.azurerm_policy_definition_built_in.policy3.id
}

output "policy_id_4" {
  value = data.azurerm_policy_definition_built_in.policy4.id
}

output "policy_id_5" {
  value = data.azurerm_policy_definition_built_in.policy5.id
}