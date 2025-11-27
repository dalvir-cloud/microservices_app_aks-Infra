   output "database_id" {
    value = [for db in azurerm_mssql_server.sqlservers : db.id]
}

output "database_names" {
  value = [for db in azurerm_mssql_database.sqldatabases : db.id]
}