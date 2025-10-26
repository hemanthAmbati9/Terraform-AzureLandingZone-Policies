terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"  # Adjust this to match the version in the lock file
    }
  }
}


provider "azurerm" {
    subscription_id = "please enter subscription_id"
    tenant_id = "please enter tenant_id"
    client_id = " please enter client_id"
    client_secret = "please enter iclient_secret"
    features {}
    
}