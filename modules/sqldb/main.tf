resource "azurerm_mssql_database" "sqldb-example" {
  name           = format("%s%s%02d", var.base_name, var.prefix, var.number)
  server_id      = var.sql_serv_id
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  license_type   = "LicenseIncluded"
  max_size_gb    = 2
  read_scale     = false
  sku_name       = "basic"

  tags = {
    foo = "bar"
  }
}