data "azurerm_resource_group" "main" {
  name = var.resource_group_name
}

resource "azurerm_virtual_network" "main" {
  name                = var.azurerm_virtual_network
  address_space       = ["${var.vnet_address_prefix}"]
  location            = data.azurerm_resource_group.main.location
  resource_group_name = data.azurerm_resource_group.main.name
}

resource "azurerm_network_security_group" "main" {
  name                = var.azurerm_network_security_group
  location            = data.azurerm_resource_group.main.location
  resource_group_name = data.azurerm_resource_group.main.name
}

resource "azurerm_subnet" "main" {
  name                 = var.azurerm_subnet
  resource_group_name  = data.azurerm_resource_group.main.name
  virtual_network_name = data.azurerm_virtual_network.main.name
  address_prefixes     = ["${var.azurerm_subnet_address_prefix}"]
}

resource "azurerm_public_ip" "main" {
  name                = var.azurerm_public_ip
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  allocation_method   = "Dynamic"
  sku                 = "Basic"
  domain_name_label   = "${var.dns_label}-${random_integer.rand.result}"
}

resource "random_integer" "rand" {
  min = 1
  max = 999
}
