// Azure configuration
variable "subscription_id" {
  type = string
}
variable "client_id" {
  type = string
}
variable "client_secret" {
  type = string
}
variable "tenant_id" {
  type = string
}

variable "fgtvm_name" {
  type    = string
  default = "fortgate vm"
}

variable "vm_size" {
  type    = string
  default = "Standard_F4"
}

// To use custom image
// by default is false
variable "custom" {
  default = false
}

//  Custom image blob uri
variable "customuri" {
  type    = string
  default = "<custom image blob uri>"
}

variable "custom_image_name" {
  type    = string
  default = "<custom image name>"
}

variable "custom_image_resource_group_name" {
  type    = string
  default = "<custom image resource group>"
}

// License Type to create FortiGate-VM
// Provide the license type for FortiGate-VM Instances, either byol or payg.
variable "license_type" {
  default = "payg"
}

variable "publisher" {
  type    = string
  default = "fortinet"
}

variable "fgtoffer" {
  type    = string
  default = "fortinet_fortigate-vm_v5"
}

// BYOL sku: fortinet_fg-vm
// PAYG sku: fortinet_fg-vm_payg_20190624
variable "fgtsku" {
  type = map(any)
  default = {
    byol = "fortinet_fg-vm"
    payg = "fortinet_fg-vm_payg_2022"
  }
}

variable "fgtversion" {
  type    = string
  default = "7.2.2"
}

variable "adminusername" {
  type    = string
  default = "azureadmin"
}

variable "adminpassword" {
  type    = string
  default = "Fortinet@123#"
}

variable "location" {
  type    = string
  default = "westus2"
}

variable "vnetcidr" {
  default = "10.1.0.0/16"
}

variable "publiccidr" {
  default = "10.1.0.0/24"
}

variable "privatecidr" {
  default = "10.1.1.0/24"
}

variable "bootstrap-fgtvm" {
  // Change to your own path
  type    = string
  default = "fgtvm.conf"
}

// license file for the fgt
variable "license" {
  // Change to your own byol license file, license.lic
  type    = string
  default = "license.txt"
}
//vnet
variable "vnet" {
  type = string
}
//resource group
variable "resourcegroup" {
  type = string
}
//vnet
variable "vnet" {
  type = string
}

variable "keyvault" {
  type    = string
  default = "fgtkeyvault"
}

variable "public_ip" {
  type    = string
  default = "fgtfwPublicIP"
}

variable "loadbalancer2" {
  type    = string
  default = "internal loadbalancer"
}

variable "loadbalancer1" {
  type    = string
  default = "external loadbalancer"
}

variable "subnet1" {
  type    = string
  default = "publicsubnet"
}

variable "subnet2" {
  type    = string
  default = "privatesubnet"
}

variable "subnet3" {
  type    = string
  default = "protected subnet"
}

variable "publiccidr" {
  type    = string
  default = ""
}

variable "privatecidr" {
  type    = string
  default = ""
}

variable "protectedcidr" {
  type    = string
  default = ""
}

variable "routetable" {
  type    = string
  default = "InternalRouteTable1"
}

variable "storageaccount" {
  type    = string
  default = "fgtstorageaccount"
}
