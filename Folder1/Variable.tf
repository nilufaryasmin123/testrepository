variable "resource_group_name" {
  description = "Resource group name that will contain various resources"
}

variable "vnet_name" {
  description = "Name of the vnet"
}
variable "env_name" {
  description = "Name of the environment"
}

variable "vnet_cidr" {
  description = "CIDR block for Virtual Network"
}

variable "subnet_name1" {
  description = "Name of the First subnet"
}
variable "subnet_name2" {
  description = "Name of the second subnet"
}

variable "subnet1_cidr" {
  description = "CIDR block for Subnet within a Virtual Network"
}

variable "subnet2_cidr" {
  description = "CIDR block for Subnet within a Virtual Network"
}

