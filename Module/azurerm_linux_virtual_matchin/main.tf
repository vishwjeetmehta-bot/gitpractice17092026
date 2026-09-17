resource "azurerm_linux_virtual_machine" "axion_linux_vm" {

  for_each                        = var.vm
  name                            = each.value.name
  resource_group_name             = each.value.resource_group_name
  location                        = each.value.location
  size                            = each.value.size
  admin_username                  = "axionsystem"
  admin_password                  = "Axion@12345"
  network_interface_ids           = [data.azurerm_network_interface.axion_nic[each.key].id]
  disable_password_authentication = false


  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts-gen2"
    version   = "latest"
  }
}

data "azurerm_network_interface" "axion_nic" {
  for_each            = var.vm
  name                = each.value.nic_name
  resource_group_name = each.value.resource_group_name
}
