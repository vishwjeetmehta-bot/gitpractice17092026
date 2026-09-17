resource_groups = {
  rg1 = {
    name     = "rg-anxionsystem"
    location = "East US"
  }
  rg2 = {
    name     = "rg-anxionsystem2"
    location = "East US"
  }
}

vnet = {
  virtual_network1 = {
    name                = "axion_vnet"
    location            = "East US"
    resource_group_name = "rg-anxionsystem"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet = {
  subnet1 = {
    name                 = "fronetnd_axion_subnet"
    resource_group_name  = "rg-anxionsystem"
    virtual_network_name = "axion_vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "backend_axion_subnet"
    resource_group_name  = "rg-anxionsystem"
    virtual_network_name = "axion_vnet"
    address_prefixes     = ["10.0.2.0/24"]
  }
  subnet3 = {
    name                 = "database_axion_subnet"
    resource_group_name  = "rg-anxionsystem"
    virtual_network_name = "axion_vnet"
    address_prefixes     = ["10.0.3.0/24"]
  }
}

pip = {
  pip1 = {
    name                = "fronetnd_axion_pip"
    resource_group_name = "rg-anxionsystem"
    location            = "East US"
    allocation_method   = "Static"
  }
  pip2 = {
    name                = "backend_axion_pip"
    resource_group_name = "rg-anxionsystem"
    location            = "East US"
    allocation_method   = "Static"
  }
  pip3 = {
    name                = "database_axion_pip"
    resource_group_name = "rg-anxionsystem"
    location            = "East US"
    allocation_method   = "Static"
  }
}

nsg = {
  nsg1 = {
    name                = "axion_nsg"
    location            = "East US"
    resource_group_name = "rg-anxionsystem"
  }
}

nic = {
  nic1 = {
    name                 = "fronetnd_axion_nic"
    location             = "East US"
    resource_group_name  = "rg-anxionsystem"
    subnet_name          = "fronetnd_axion_subnet"
    virtual_network_name = "axion_vnet"
    pip_name             = "fronetnd_axion_pip"
  }
  nic2 = {
    name                 = "backend_axion_nic"
    location             = "East US"
    resource_group_name  = "rg-anxionsystem"
    subnet_name          = "backend_axion_subnet"
    virtual_network_name = "axion_vnet"
    pip_name             = "backend_axion_pip"
  }
  nic3 = {
    name                 = "database_axion_nic"
    location             = "East US"
    resource_group_name  = "rg-anxionsystem"
    subnet_name          = "database_axion_subnet"
    virtual_network_name = "axion_vnet"
    pip_name             = "database_axion_pip"
  }
}

vm = {
  vm1 = {
    name                = "fronetnd-axion-vm"
    resource_group_name = "rg-anxionsystem"
    location            = "East US"
    size                = "Standard_DC1ds_v3"
    nic_name            = "fronetnd_axion_nic"
  }
  vm2 = {
    name                = "backend-axion-vm"
    resource_group_name = "rg-anxionsystem"
    location            = "East US"
    size                = "Standard_DC1ds_v3"
    nic_name            = "backend_axion_nic"
  }
  vm3 = {
    name                = "database-axion-vm"
    resource_group_name = "rg-anxionsystem"
    location            = "East US"
    size                = "Standard_DC1ds_v3"
    nic_name            = "database_axion_nic"
  }
}


