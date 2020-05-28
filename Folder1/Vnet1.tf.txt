resource "azurerm_virtual_network" "la_vnet" {
  name = var.vnet_name
  address_space = ["${var.vnet_cidr}"]
  location = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.terraform_rg.name}"

  tags {
      environment = var.env_name
  }
}

resource "azurerm_subnet" "la_subnet_1" {
  name = var.subnet_name1
  address_prefix = "${var.subnet1_cidr}"
  virtual_network_name = "${azurerm_virtual_network.la_vnet.name}"
  resource_group_name = "${azurerm_resource_group.terraform_rg.name}"
}

resource "azurerm_subnet" "la_subnet_2" {
  name = var.subnet_name2
  address_prefix = "${var.subnet2_cidr}"
  virtual_network_name = "${azurerm_virtual_network.la_vnet.name}"
  resource_group_name = "${azurerm_resource_group.terraform_rg.name}"