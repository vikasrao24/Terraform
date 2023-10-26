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

variable "ask_id"{
     description = "ask id of the project"
     type = string
     }

variable "projectname"{
     description = "name of the project"
     type = string
     }