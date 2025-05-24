variable "resource_group_name" {
  type = string
  default = "mate-azure-task-12_terraform"
}

variable "location" {
  type = string
  default = "uksouth"
}
variable "azurerm_virtual_network" {
  type = string
  description = "The name of azurerm_virtual_network"
  default = "vnet"
}

variable "azurerm_network_security_group" {
  type = string
  description = "The name of azurerm_network_security_group"
  default = "defaultnsg"
}

variable "azurerm_subnet" {
  type = string
  description = "The name of azurerm_subnet"
  default = "default"
}

variable "azurerm_public_ip" {
  type = string
  description = "The name of azurerm_public_ip"
  default = "linuxboxpip"
}

variable "dns_label" {
  type = string
  description = "The name of dns_label"
  default = "matetask"
}

variable "vnet_address_prefix" {
  type = string
  description = "The address prefix of the virtual network"
  default = "10.0.0.0/16"
}

variable "azurerm_subnet_address_prefix" {
  type = string
  description = "The address prefix of the subnet"
  default = "10.0.0.0/24"
}