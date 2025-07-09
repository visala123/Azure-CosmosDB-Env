provider "azurerm" {
  features {}
}

module "cosmosdb" {
  source              = "../../modules/cosmosdb"
  resource_group_name = var.resource_group_name
  location            = var.location
  account_name        = var.account_name
  offer_type          = var.offer_type
  kind                = var.kind
  consistency_level   = var.consistency_level
  failover_priority   = var.failover_priority
  capabilities        = var.capabilities
  enable_free_tier    = var.enable_free_tier
  tags                = var.tags
}

