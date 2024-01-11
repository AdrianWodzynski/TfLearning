module "ResourceGroup" {
  source       = "./modules/ResourceGroup"
  prefix       = "prod"
  location     = var.location
  countx       = 4
}

module "KeyVault" {
  source              = "./modules/KeyVault"
  prefix              = "prod"
  number              = "01"
  location            = var.location
  resource_group_name = module.ResourceGroup.rg_name[1]
}

module "StorageAccount" {
  source              = "./modules/StorageAccount"
  base_name           = "stexample"
  location            = var.location
  resource_group_name = module.ResourceGroup.rg_name[0]
}

module "vnet" {
  source               = "./modules/Vnet"
  location             = var.location
  resource_group_name  = module.ResourceGroup.rg_name[2]
}

module "snet" {
  source              = "./modules/Snet"
  vnet_name           = module.vnet.vnet_name
  location            = var.location
  resource_group_name = module.ResourceGroup.rg_name[2]
}

module "sql" {
  source              = "./modules/sqlserver"
  location            = var.location
  resource_group_name = module.ResourceGroup.rg_name[3]
}

module "sqldb" {
  source              = "./modules/sqldb"
  sql_serv_id         = module.sql.sql_id
  location            = var.location
  resource_group_name = module.ResourceGroup.rg_name[3]
}