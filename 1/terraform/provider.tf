terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.77.0"
    }
  }
      backend "azurerm" {
      
     resource_group_name  = "..."
     storage_account_name = "..."
     container_name       = "..."
     key                  = "..."
     
      }
}

provider "azurerm" {
  features {}
  subscription_id = "..."
  client_id       = "..."
  client_secret   = "..."
  tenant_id       = "..."
}