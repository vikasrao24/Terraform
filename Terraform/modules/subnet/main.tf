resource "azurerm_subnet" "nonprod-sbnet" {
  name                = var.subnet_name
  resource_group_name = var.resource_group_name
  address_prefixes       = var.address_prefixes
  virtual_network_name = var.vnet_name
  service_endpoints = var.service_endpoints
}


  #  tags = {
  #   Environment = "${var.environment}"
  #   Ask_id = "${var.ask_id}"
  #   Project_name="${var.projectname}"
  #   }


# output "subnet_name" {
# value = "${azurerm_subnet.nonprod-sbnet.name}"
# }

# output "subnet_id" {
# value = "${azurerm_subnet.nonprod-sbnet.id}"
# }
