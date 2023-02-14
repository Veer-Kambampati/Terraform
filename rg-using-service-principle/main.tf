# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  subscription_id = "b494994d-b5a4-427d-a0f1-89711eb6924c"
  client_id       = "84e3c4ac-dfc5-4d45-b079-0cc5010ce4a3"
  client_secret   = "fld8Q~Gx6TYI2eeEaa64N_4XJSYy6MHVEF2wvceL"
  tenant_id       = "b97e6451-2841-4606-9127-c0bbd88f6db7"
}

resource "azurerm_resource_group" "trg1"{
  name= random_pet.rg.id
  location= var.rglocation
}

resource "random_pet" "rg" {
 prefix = var.rgname
}