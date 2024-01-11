variable "base_name" {
  description = "The base name"
  type        = string
  default     = "sql"
}

variable "prefix" {
  description = "Prefix to be used for resources"
  type        = string 
  default     = "prod"
}

variable "number" {
  description = "Number to be used for resources"
  type        = string 
  default     = "01"
}

variable "location" {
  description = "Location"
  type        = string
  default     = "West Europe"
}

variable "resource_group_name" {
  description = "Name of resource group"
  type        = string
}

variable "sql_login" {
  default = "Login1111111"
}

variable "sql_pass" {
  default = "Pass113411"
}