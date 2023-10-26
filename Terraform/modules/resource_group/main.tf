resource "azurerm_resource_group" "azresource" {
  name = "${var.prefix}-${var.environment}-rg"
  location = var.location

   tags = {
    Environment = "${var.environment}"
    Ask_id = "${var.ask_id}"
    Project_name="${var.projectname}"
#Description="${var.descritption}"
    }
}

output "resource_group_name" {
value = "${azurerm_resource_group.azresource.name}"
}

output "resource_group_id" {
value = "${azurerm_resource_group.azresource.id}"
}
