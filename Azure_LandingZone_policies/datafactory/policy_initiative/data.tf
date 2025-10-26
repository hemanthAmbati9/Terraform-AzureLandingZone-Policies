data "azurerm_policy_definition_built_in" "policy1" {
  display_name = "Azure data factories should be encrypted with a customer-managed key"
}

data "azurerm_policy_definition_built_in" "policy2" {
  display_name =  "Azure Data Factory integration runtime should have a limit for number of cores"
}

data "azurerm_policy_definition_built_in" "policy3" {
  display_name = "Configure Data Factories to disable public network access"
}
data "azurerm_policy_definition_built_in" "policy4" {
  display_name = "Azure Data Factory linked services should use system-assigned managed identity authentication when it is supported"
}
data "azurerm_policy_definition_built_in" "policy5" {
  display_name = "Azure Data Factory should use a Git repository for source control"
}