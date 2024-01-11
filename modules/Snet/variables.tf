variable "base_name" {
  description = "The base name"
  type        =  string
  default     =  "snet"
}

variable "prefix" {
    description = "Prefix to be used for resources"
    type        = string
    default     = "prod"
}

variable "number" {
  description   = "Number to be used for resources"
  type          = string
  default       = "01"
}

variable "location" {
  description   = "Location for the deployment"
  type          = string
  default       = "West Europe"
}

variable "resource_group_name" {
  description   = "Name of resource group"
  type          = string
  
}

variable "snet1" {
default         = ["10.240.2.32/29"]
}

variable "vnet_name" {
  description  = "Name for vnet"
  type         = string
}
