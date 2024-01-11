variable "base_name" {
  description = "The base name"
  type        = string
  default     = "rg"
}
variable "location" {
  description = "Location for the deployment"
  type        = string
  default     = "West Europe"
}

variable "prefix" {
  description = "Prefix to be used for resources"
  type        = string
  default     = "prod"
}

variable "countx" {
  description = "Number of rg to create"
  type        = number
  default     = 01
}