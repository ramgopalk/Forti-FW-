# resource "azurerm_route_table" "routetable" {
#   depends_on          = [azurerm_virtual_machine.fgtvm]
#   name                = var.routetable.name
#   location            = var.location
#   resource_group_name = var.resourcegroup.name
# }

# resource "azurerm_route" "default" {
#   name                   = "default"
#   resource_group_name    = var.resourcegroup.name
#   route_table_name       = var.name
#   address_prefix         = "0.0.0.0/0"
#   next_hop_type          = "VirtualAppliance"
#   next_hop_in_ip_address = azurerm_network_interface.fgtport2.private_ip_address
# }

# resource "azurerm_subnet_route_table_association" "internalassociate" {
#   depends_on     = [azurerm_route_table.internal]
#   subnet_id      = azurerm_subnet.subnet2.id
#   route_table_id = azurerm_route_table.routetable.id
# }