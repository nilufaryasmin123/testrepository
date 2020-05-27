resource "azurestack_virtual_network" "virtual-network" {
  name                = "${azurestack_resource_group.rg.name}-VirtualNetwork"
  address_space       = ["10.0.0.0/16"]
  location            = "${azurestack_resource_group.rg.location}"
  resource_group_name = "${azurestack_resource_group.rg.name}"
}

resource "azurestack_subnet" "subnet1" {
  name                            = "${azurestack_resource_group.rg.name}-Subnet1"
  resource_group_name             = "${azurestack_resource_group.rg.name}"
  virtual_network_name            = "${azurestack_virtual_network.virtual-network.name}"
  address_prefix                  = "10.0.2.0/24"
  network_security_group_id       = "${azurestack_network_security_group.nsg.id}"
}

resource "azurestack_public_ip" "public-ip" {
  count                         = "${var.vm_count}"
  name                          = "public-ip-${count.index + 1}"
  location                      = "${azurestack_resource_group.rg.location}"
  resource_group_name           = "${azurestack_resource_group.rg.name}"
  public_ip_address_allocation  = "static"
}