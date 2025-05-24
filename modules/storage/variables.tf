variable "resource_group_name" {
  type = string
  default = "mate-azure-task-12_terraform"
}

variable "location" {
  type = string
  default = "uksouth"
}

variable "azurerm_storage_account" {
  type    = string
  default = "storagekonstantinou77"
}

variable "azurerm_storage_container" {
  type    = string
  default = "task-artifacts"
}
