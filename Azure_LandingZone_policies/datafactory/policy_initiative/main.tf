
resource "azurerm_policy_set_definition" "example1" {
  name         = "datafactorytestPolicySet"
  policy_type   = "Custom"
  display_name  = "datafactory Policy Set"

  parameters = jsonencode({
    # "allowedLocations" = {
    #   "type" = "Array",
    #   "metadata" = {
    #     "description" = "The list of allowed locations for resources.",
    #     "displayName" = "Allowed locations",
    #     "strongType" = "location"
    #   }
    # },
    "effect" = {
      "type" = "String",
      "metadata" = {
        "description" = "The effect of the policy.",
        "displayName" = "Effect"
      }
    }
  })

  policy_definition_reference {
    policy_definition_id =  data.azurerm_policy_definition_built_in.policy1.id
    parameter_values   = jsonencode({
      # "listOfAllowedLocations" = {
      #   "value" = "[parameters('allowedLocations')]"
      # },
      "effect" = {
        "value" =  var.custom_effect
      }
    })
  }

  policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition_built_in.policy2.id
    parameter_values   = jsonencode({
      # "anotherParameter" = {
      #   "value" = "[parameters('anotherParameter')]"
      # },
      "effect" = {
        "value" = var.custom_effect
      }
    })
  }

  policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition_built_in.policy3.id
    parameter_values   = jsonencode({
      # "allowedLinkedServiceResourceTypes" = {
      #   "value" = "[parameters('anotherParameter')]"
      # },
      "effect" = {
        "value" = var.custom_effect
      }
    })
  }

  policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition_built_in.policy4.id
    parameter_values   = jsonencode({
      # "anotherParameter" = {
      #   "value" = "[parameters('anotherParameter')]"
      # },
      "effect" = {
        "value" = var.custom_effect
      }
    })
  }

  policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition_built_in.policy5.id
    parameter_values   = jsonencode({
      # "anotherParameter" = {
      #   "value" = "[parameters('anotherParameter')]"
      # },
      "effect" = {
        "value" = var.custom_effect
      }
    })
  }

  # Add more policy_definition_reference blocks as needed
}
