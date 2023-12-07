resource "azurerm_subnet" "subnet" {
  name                 = "subnet"
  resource_group_name  = var.name
  virtual_network_name = module.azurerm_virtual_network.rg_mod_01.name
  address_prefixes     = ["10.0.1.0/24"]
}