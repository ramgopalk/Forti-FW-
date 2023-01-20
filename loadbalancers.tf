
# resource "azurerm_public_ip" "publicip1" {
#   name                = var.publicip.name
#   location            = var.location
#   resource_group_name = var.resourcegroup.name
#   allocation_method   = "Static"
# }

resource "azurerm_lb" "loadbalancer1" {
  name                = var.loadbalancer1.name
  location            = var.location
  resource_group_name = var.resourcegroup.name

  frontend_ip_configuration {
    name                          = "PublicIPAddress"
    public_ip_address_id          = azurerm_public_ip.public_ip.id
    subnet_id                     = var.frontend_subnet_id
    # private_ip_address            = var.frontend_private_ip_address
    # private_ip_address_allocation = var.frontend_private_ip_address_allocation
  }
}


resource "azurerm_lb_backend_address_pool" "example" {
  loadbalancer_id = azurerm_lb.loadbalancer1.id
  name            = "BackEndAddressPool"
}


resource "azurerm_lb_probe" "example" {
  loadbalancer_id = azurerm_lb.loadbalancer1.id
  name            = "ssh-running-probe"
  port            = 22
}

resource "azurerm_lb_rule" "example" {
  loadbalancer_id                = azurerm_lb.loadbalancer1.id
  name                           = "LBRule"
  protocol                       = "Tcp"
  frontend_port                  = 3389
  backend_port                   = 3389
  frontend_ip_configuration_name = "PublicIPAddress"
}

resource "azurerm_lb_nat_rule" "example1" {
  resource_group_name            = var.resourcegroup.name
  loadbalancer_id                = azurerm_lb.loadbalancer1.id
  name                           = "RDPAccess"
  protocol                       = "Tcp"
  frontend_port_start            = 3000
  frontend_port_end              = 3389
  backend_port                   = 3389
  backend_address_pool_id        = azurerm_lb_backend_address_pool.example.id
  frontend_ip_configuration_name = "PublicIPAddress"
}



//load balancer2 "external load balancer"  "LB2"

# resource "azurerm_public_ip" "publicip2" {
#   name                = "PublicIPForLB"
#   location            = var.location
#   resource_group_name = var.resourcegroup.name
#   allocation_method   = "Static"
# }

resource "azurerm_lb" "loadbalancer2" {
  name                = var.loadbalancer2.name
  location            = var.location
  resource_group_name = var.resourcegroup.name

  frontend_ip_configuration {
    name                          = "PublicIPAddress"
    public_ip_address_id          = azurerm_public_ip.public_ip.id
    subnet_id                     = var.frontend_subnet_id
    private_ip_address            = var.frontend_private_ip_address
    private_ip_address_allocation = var.frontend_private_ip_address_allocation
  }
}


resource "azurerm_lb_backend_address_pool" "example" {
  loadbalancer_id = azurerm_lb.loadbalancer2.id
  name            = "BackEndAddressPool"
}


resource "azurerm_lb_probe" "example" {
  loadbalancer_id = azurerm_lb.loadbalancer2.id
  name            = "ssh-running-probe"
  port            = 22
}

resource "azurerm_lb_rule" "example" {
  loadbalancer_id                = azurerm_lb.loadbalancer2.id
  name                           = "LBRule"
  protocol                       = "Tcp"
  frontend_port                  = 3389
  backend_port                   = 3389
  frontend_ip_configuration_name = "PublicIPAddress"
}

resource "azurerm_lb_nat_rule" "example1" {
  resource_group_name            = var.resourcegroup.name
  loadbalancer_id                = azurerm_lb.loadbalancer2.id
  name                           = "RDPAccess"
  protocol                       = "Tcp"
  frontend_port_start            = 3000
  frontend_port_end              = 3389
  backend_port                   = 3389
  backend_address_pool_id        = azurerm_lb_backend_address_pool.example.id
  frontend_ip_configuration_name = "PublicIPAddress"
}




# //public ip

# resource "azurerm_resource_group" "example" {
#   name     = "example-resources"
#   location = "West Europe"
# }

# resource "azurerm_public_ip" "example" {
#   name                = "acceptanceTestPublicIp1"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   allocation_method   = "Static"

#   tags = {
#     environment = "Production"
#   }
# }

# resource "azurerm_public_ip_prefix" "example" {
#   name                = "acceptanceTestPublicIpPrefix1"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name

#   prefix_length = 31

#   tags = {
#     environment = "Production"
#   }
# }


