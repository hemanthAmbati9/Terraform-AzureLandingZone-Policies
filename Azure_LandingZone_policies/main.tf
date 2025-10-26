module "datafactory_policies" {
  source = "./datafactory"
  # Pass variables as needed
  custom_effect =  var.custom_effect
}
module "keyvault_policies" {
  source = "./keyvault"
  # Pass variables as needed
  custom_effect =  var.custom_effect
}

resource "azurerm_resource_group" "rg" {
  name     = "boiresourcegroup"
  location = "East US"  # Adjust the location as needed
}

resource "azurerm_storage_account" "sa" {
  name                     = "boistorageaccount"  # Must be globally unique
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "Terraform"
  }
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}