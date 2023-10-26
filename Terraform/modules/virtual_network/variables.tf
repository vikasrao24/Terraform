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

variable "address_space" {
     type = list(string)
     description = "vnet address space"
     default = [ "10.0.0.0/16" ]
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