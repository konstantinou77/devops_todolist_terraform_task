terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.105.0"
    }
  }
}

resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
}


module "compute" {
  source = "./modules/compute"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  subnet_id  = module.network.subnet_id
  public_ip_id  = module.network.public_ip_id
}

module "network" {
  source = "./modules/network"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
}

module "storage" {
  source = "./modules/storage"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
}
