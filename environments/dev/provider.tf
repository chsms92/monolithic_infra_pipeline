terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.52.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "chandra-rg"
    storage_account_name = "bhushan123"
    container_name       = "tfstate"
    key                  = "dev-terraform.tfstate"

  }
}

provider "azurerm" {
  features {}
  subscription_id = "54db10a3-bd86-4105-8cb9-8454e707392d"
}
