resource "azurerm_mssql_server" "sql-example" {
  name                         = format("%s-%s-%02d", var.base_name, var.prefix, var.number)
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.sql_login
  administrator_login_password = var.sql_pass
}