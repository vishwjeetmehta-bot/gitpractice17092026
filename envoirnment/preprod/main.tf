# module "rg" {
#   source          = "../../Module/azurerm_resource_group"
#   resource_groups = var.resource_groups
# }


# module "vnet" {
#   depends_on = [module.rg]
#   source     = "../../Module/azurerm_virtual_network"
#   vnet       = var.vnet
# }

# module "subnet" {
#   depends_on = [module.vnet]
#   source     = "../../Module/azurerm_subnet"
#   subnet     = var.subnet
# }

# module "pip" {
#   depends_on = [module.rg]
#   source     = "../../Module/azurerm_public_ip"
#   pip        = var.pip
# }

# module "nsg" {
#   depends_on = [module.rg, module.nic]
#   source     = "../../Module/azurerm_nsg"
#   nsg        = var.nsg
#   nic        = var.nic
# }

# module "nic" {
#   depends_on = [module.rg, module.subnet, module.pip]
#   source     = "../../Module/azurerm_network_interface"
#   nic        = var.nic
# }

# module "vm" {
#   depends_on = [module.subnet, module.pip, module.nsg, module.nic]
#   source     = "../../Module/azurerm_linux_virtual_matchin"
#   vm         = var.vm
# }
