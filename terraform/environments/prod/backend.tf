terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstateaccountv"
    container_name       = "tfstate"
    key                  = "cosmosdb-prod.tfstate"
  }
   required_version = ">= 1.0"
   required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}
