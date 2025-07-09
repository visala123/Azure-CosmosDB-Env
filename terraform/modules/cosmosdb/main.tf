resource "azurerm_resource_group" "cosmosdb" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_cosmosdb_account" "cosmosdb" {
  name                = var.account_name
  location            = var.location
  resource_group_name = azurerm_resource_group.cosmosdb.name
  offer_type          = var.offer_type
  kind                = var.kind

  consistency_policy {
    consistency_level = var.consistency_level
  }

  geo_location {
    location          = var.location
    failover_priority = var.failover_priority
  }

  dynamic "capabilities" {
    for_each = var.capabilities
    content {
      name = capabilities.value
    }
  }

  #enable_free_tier = var.enable_free_tier
  tags             = var.tags
}
