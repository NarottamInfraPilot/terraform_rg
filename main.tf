terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.48.0"
    }
  }
backend "azurerm" {
resource_group_name   = "Narottam-rg"
   storage_account_name  = "mystorage836753"
   container_name        = "mystorage836753"
   key                    = "statefile"
}
}

provider "azurerm" {
  features {}
subscription_id = "cba3453a-ff1f-4f51-b6f6-5a1149843776"
}
resource "azurerm_resource_group" "rg" {
  name     = "prod-rg"
  location = "eastus"
}

resource "azurerm_resource_group" "rg2" {
  name     = "prod-rg2"
  location = "eastus"
}
