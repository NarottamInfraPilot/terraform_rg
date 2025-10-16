terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
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
}
resource "azurerm_resource_group" "rg" {
  name     = "prod-rg"
  location = "eastus"
}
