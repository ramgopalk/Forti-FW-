
# //public ip

# resource "azurerm_public_ip" "public_ip" {
#   name                = "acceptanceTestPublicIp1"
#   resource_group_name =var.resourcegroup.name
#   location            = var.location
#   allocation_method   = "Static"

#   tags = {
#     environment = "Production"
#   }
# }

# resource "azurerm_public_ip_prefix" "example" {
#   name                = "acceptanceTestPublicIpPrefix1"
#   location            = var.location
#   resource_group_name = var.resourcegroup.name

#   prefix_length = 31

#   tags = {
#     environment = "Production"
#   }
# }
