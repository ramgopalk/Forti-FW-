# # terraform {
# # required_providers {
# # fortios = {
# # source = "fortinetdev/fortios"
# # }
# # }
# # }

# # Configure the FortiOS Provider for FortiGate
# provider "fortios" {
# hostname     = "<your ip address here to your gateway>"
# token        = "<your key here>"
# insecure     = "true"
# }
# resource "fortios_firewall_address" "main" {
# allow_routing        = "disable"
# associated_interface = "lan"
# color                = 3
# end_ip               = "255.255.255.0"
# name                 = "testaddress"
# start_ip             = "192.168.1.50"
# subnet               = "192.168.1.0 255.255.255.0"
# type                 = "ipmask"
# visibility           = "enable"
# }