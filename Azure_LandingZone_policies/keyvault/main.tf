module "policy_initiative" {
  source = "./policy_initiative"
  custom_effect = var.custom_effect
  # Pass variables as needed
}


resource "azurerm_management_group_policy_assignment" "test" {
  name                 = "datatest-association"
  policy_definition_id = module.policy_initiative.initiative_id
  management_group_id  = data.azurerm_management_group.examplem.id
  location             = "West Europe"
     identity {
         type = "SystemAssigned"
        }
  parameters = jsonencode({
         "effect" = {
              "value" = var.custom_effect
            }
    })

}