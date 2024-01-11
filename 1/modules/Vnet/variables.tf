variable "base_name" {
  description   = "The base name"
  type          = string
  default       = "vnet"
}

variable "prefix" {
  description   = "Prefix to be used for resources"
  type          = string
  default       = "prod"
}

variable "number" {
  description   = "Number to be used for resources"
  type          = string
  default       = "01"
}

variable "location" {
  description   = "Location"
  type          = string
}

variable "resource_group_name" {
  description   = "Name of resource group"
  type          = string
}

variable "address1" {
  default = ["10.240.2.32/27"]
}


