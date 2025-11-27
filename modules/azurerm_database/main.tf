

resource "azurerm_mssql_server" "sqlservers" {
    for_each = var.sql_server
    name                         = each.value.sql_server_name
    resource_group_name          = each.value.rg_name
    location                     = each.value.location
    version                      = each.value.version
    administrator_login          = each.value.administrator_login
    administrator_login_password = each.value.administrator_login_password
}


resource "azurerm_mssql_database" "sqldatabases" {
    for_each = var.sql_server
    name                = each.value.sql_database_name
    # resource_group_name = each.value.rg_name
    # location            = each.value.location
    server_id           = azurerm_mssql_server.sqlservers[each.key].id
    # edition             = each.value.edition
}