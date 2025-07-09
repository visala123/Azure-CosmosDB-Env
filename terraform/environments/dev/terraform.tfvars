resource_group_name = "rg-cosmos-dev"
location            = "East US"
account_name        = "cosmosdb-dev-app"
offer_type          = "Standard"
kind                = "GlobalDocumentDB"
consistency_level   = "Session"
failover_priority   = 0
capabilities        = ["EnableServerless"]
enable_free_tier    = true
tags = {
  environment = "dev"
  team        = "devops"
}