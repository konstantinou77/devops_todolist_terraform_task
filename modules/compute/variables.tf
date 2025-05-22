variable "resource_group_name" {
  type = string
  default = "mate-azure-task-12_terraform"
}

variable "location" {
  type = string
  default = "uksouth"
}

variable "azurerm_virtual_machine" {
  type        = string
  description = "The name of azurerm_virtual_machine"
  default = "matebox"
}

variable "azurerm_virtual_machine_size" {
  type        = string
  description = "The name of azurerm_virtual_machine"
  default = "Standard_B1s"
}

variable "ssh_key_public" {
  description = "The public SSH key to access the virtual machine"
  type        = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCY1TPSsHea98kt1BNyRcJMvmYb/zlNBQOMs8mTjkzB1G/2lhhfH8lSrJE2ugc9VGeTrxffti0kqNA9dO1QBwwipzKJn95M+B3IKEr+JYI2kJRWYn9bz4WGfK5aFfPUnGyDPG/i9GLNtQouq5gNyqmmDv2rPqgfm7mvkrYQ6HMMSkJ1ogWqVqUiKoE9KdojgZWw+ojfsiX4Ydwy4Icfw14+B4iAsp0pboB7z0knTVlbUWlHqzzWX4hwUIKX6B0ZJ4bzqxn1urlNj6m25b3LCe5kwAaCdDDQ1RnjCldjWR3rVhNSZfHGtN9LNzGk6CnalOa5WnfFU2GglmzuuNVQ+uzpjCl16nKYnujQq6DSejReklNt16m7twyOcnszFFE8nlF5vr4su1/M9pCsdw8SRgNbKwANvdum1azCnqjoXigEmK54NUo+94jjRfPGkEYsxwTmSEabKFa6Ic+L+r362giKHPSe+1yTujCoTpMTumApWfRlukR2RFurGf52v4QWEOdn1OoOQJNeOXrTb08OnMdUSDIPWnid4qLdIvDtxOPFfBhVB6lsbzDHsyp1XF0OwJHTaWxkjVpSnBHj/Z3wVdA8BpVsZ206hJsTaLxqZ0VvjciCMepb5ZbLje2WANpk4+3DSPDNL1bFt3nuxjbWFXOAxY+e9uTlOI/5rq6JRXl12w== konstantinou77"
}

variable "username" {
  type        = string
  description = "The username VM"
  default     = "azureadmin"
}

variable "hostname" {
  type        = string
  description = "The hostname VM"
  default     = "hostname"
}

variable "storage_os_disk_name" {
  type        = string
  description = "The name of storage_os_disk"
  default     = "myosdisk"
}

variable "admin_username" {
  type        = string
  description = "The name of admin_username"
  default     = "testadmin"
}

variable "ssh_name" {
  type        = string
  description = "The name of ssh key"
  default     = "linuxboxsshkey"
}

variable "azurerm_virtual_machine_extension" {
  type = string
  description = "The name of azurerm_virtual_machine_extension"
  default = "install-app-script"
}

variable "subnet_id" {
  description = "ID of the subnet to attach NIC"
  type        = string
}

variable "public_ip_id" {
  description = "The ID of the public IP to attach to NIC"
  type        = string
}