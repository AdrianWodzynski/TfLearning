resource "azurerm_subnet" "snet-example" {
  name                 = format("%s-%s-%02d", var.base_name, var.prefix, var.number)
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet_name
  address_prefixes     = var.snet1
}

