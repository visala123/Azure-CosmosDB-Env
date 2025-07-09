output "cosmosdb_account_name" {
  value = azurerm_cosmosdb_account.cosmosdb.name
}

output "cosmosdb_endpoint" {
  value = azurerm_cosmosdb_account.cosmosdb.endpoint
}
