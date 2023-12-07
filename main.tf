module "rg_mod_01" {
    source = "./modules/resource_grp"
    location = var.location
    name = var.name
}

module "vnet" {
    source = "./modules/vnet" 
    name = var.name
    location = var.location
    depends_on = [ module.rg_mod_01 ]
}

# module "subnet" {
#     source = "./modules/subnet"
#     name = var.name
# }

# module "nic" {
#     source = "./modules/nic"
  
# }