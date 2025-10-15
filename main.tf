terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
backend "azurerm" {}
}

provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "rg" {
  name     = "prod-rg"
  location = "eastus"
}
