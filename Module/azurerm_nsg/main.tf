resource "azurerm_network_security_group" "axion_nsg" {
  for_each            = var.nsg
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  security_rule {
    name                       = "axiontest123"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

data "azurerm_network_interface" "axion_nic" {
  for_each            = var.nic
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
}

resource "azurerm_network_interface_security_group_association" "axion_nic_nsg" {
  for_each                  = var.nic
  network_interface_id      = data.azurerm_network_interface.axion_nic[each.key].id
  network_security_group_id = azurerm_network_security_group.axion_nsg["nsg1"].id
}