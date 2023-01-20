# resource "azurerm_availability_set" "example" {
#   name                = "example-aset"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = var.resourcegroup.name

#   tags = {
#     environment = "Production"
#   }
# }