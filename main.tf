module "resource_group" {
  source = "../modules/resource_group"
  ask_id = var.ask_id
  projectname = var.projectname
  environment = var.environment
  prefix = var.prefix
  location = var.location
  }

module "virtual_network" {
  source = "../modules/virtual_network"

  ask_id = var.ask_id
  projectname = var.projectname
  environment = var.environment
  prefix = var.prefix
  location = var.location
  resource_group_name = module.resource_group.resource_group_name
}

module "subnet" {
 source = "../modules/subnet"
 prefix = var.prefix
 subnet_name = "${var.prefix}-common-sbnet"
 location = var.location
 environment = var.environment
 projectname = var.projectname
 ask_id = var.ask_id
 vnet_name = module.virtual_network.virtual_network_name
 #"${azurerm_virtual_network.azresource_vnet.name}"
 resource_group_name = module.resource_group.resource_group_name
 address_prefixes = var.subnet_details["common"].address_prefixes
 service_endpoints = var.subnet_details["common"].service_endpoints
 
 #description = "This is for common subnet"
}