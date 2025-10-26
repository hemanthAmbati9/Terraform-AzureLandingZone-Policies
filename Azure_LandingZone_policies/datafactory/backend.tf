terraform {
  backend "azurerm" {
    resource_group_name  = "boiresourcegroup"
    storage_account_name = "boistorageaccount"
    container_name       = "tfstate"
    key                  = "datafactory/terraform.tfstate"
  }
}