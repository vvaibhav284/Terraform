resource "azurerm_network_interface" "nic" {
  name                = "nic"
  location            = module.azurerm_resource_group.rg_mod_01.location
  resource_group_name = module.azurerm_resource_group.rg_mod_01.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = module.azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}