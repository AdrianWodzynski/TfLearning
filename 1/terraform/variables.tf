variable "location" {
    description = "Location to be used for resources"
    type = string
    default = "West Europe"
}

variable "name" { 
    description = "Name to be used for dashboard"
    default = "rg-dashboard-01"
}

variable "tags" {
    description = "Tags to be used for resources"
    type = map(string)
    default = null
}

