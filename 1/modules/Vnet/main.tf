resource "azurerm_virtual_network" "vnet-example" {
  name                = format("%s-%s-%02d", var.base_name, var.prefix, var.number)
  address_space       = var.address1
  location            = var.location
  resource_group_name = var.resource_group_name
}

