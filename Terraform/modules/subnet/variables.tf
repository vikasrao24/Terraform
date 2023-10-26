# Variables
variable "prefix" {
  type = string
  description = "resource prefix"
}

variable "location" {
type = string
  description = "Azure Region"
  }

variable "environment"{
     description = "environment"
type = string
     }

variable "subnet_name" {
     type = string
     description = "subnet name"
}

variable "address_prefixes" {
     type = list(string)
     description = "address prefixes"
     default = [ "10.0.1.0/24" ]
}

variable "service_endpoints"{
     type = set(string)
     description = "service endpoints"
}
variable "ask_id"{
     description = "ask id of the project"
type = string
     }

variable "projectname"{
     description = "name of the project"
type = string
     }

     variable "resource_group_name" {
          type = string
          description ="resource group name"
       
     }

     variable "vnet_name" {
          type = string
          description ="virtual_network_name"
     }