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
  subscription_id = "1038f44a-e6a4-4d90-821a-412f08cd9720"
}
