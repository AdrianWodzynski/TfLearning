output "rg_name" {
  value = [ for rg in azurerm_resource_group.rg-example : rg.name ]
}