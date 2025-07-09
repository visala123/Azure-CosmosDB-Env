resource_group_name = "rg-cosmos-prod"
location            = "East US"
account_name        = "cosmosdb-prod-app"
offer_type          = "Standard"
kind                = "GlobalDocumentDB"
consistency_level   = "Session"
failover_priority   = 0
capabilities        = ["EnableServerless"]
enable_free_tier    = true
tags = {
  environment = "prod"
  team        = "platform"
  costcenter  = "production"
}
