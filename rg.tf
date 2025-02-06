terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.16.0"
    }
  }
}

# This creates a NEW RG 
# REALLY 
# gigds
provider "azurerm" {
  features {}
  # Configuration options
  # client_id = "YOUR-VALUES-HERE"
  client_id = "YOUR-VALUES-HERE"
  client_secret = "YOUR-VALUES-HERE"
  tenant_id = "YOUR-VALUES-HERE"
  subscription_id = "YOUR-VALUES-HERE"
  use_oidc        = true
}

resource "azurerm_resource_group" "name" {

  name     = "test"
  location = "west us"
  tags = {
    new = "value",
    env = "prod"
  }
}