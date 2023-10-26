resource "azurerm_virtual_network" "azresource_vnet" {
  name                = var.prefix
  location            = var.location
  address_space       = var.address_space
  resource_group_name = var.resource_group_name

   tags = {
    Environment = "${var.environment}"
    Ask_id = "${var.ask_id}"
    Project_name="${var.projectname}"
    }
}

output "virtual_network_name" {
value = "${azurerm_virtual_network.azresource_vnet.name}"
}

output "virtual_network_id" {
value = "${azurerm_virtual_network.azresource_vnet.id}"
}
