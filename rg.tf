terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.16.0"
    }
  }
}

# This creates a NEW RG 
provider "azurerm" {
  features {}
  # Configuration options
  client_id = "08527c67-b558XXXXXXXXXXXx"
  client_secret   = "jbr8Q~guvvHXXXXXXXXXXXXXXXXXxn"
  tenant_id       = "cb561bac-8XXXXXXXXXXXXXXXXX3ae"
  subscription_id = "910fcc57-XXXXXXXXXXXXx"
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