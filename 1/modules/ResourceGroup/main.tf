resource "azurerm_resource_group" "rg-example" {
  count    = var.countx
  name     = format("%s-%s-%02d", var.base_name, var.prefix, count.index + 1)
  location = var.location
} 