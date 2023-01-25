resource "azurerm_resource_group" "RG2" {
  name     = var.rgname
  location = var.loc
}

resource "azurerm_virtual_network" "RG2" {
  name                = var.Vnetname
  location            = azurerm_resource_group.RG2.location
  resource_group_name = azurerm_resource_group.RG2.name
  address_space       = var.address_space


  subnet {
    name           = var.Subnetname[0]
    address_prefix = var.Subnetaddress[0]
  }

  subnet {
    name           = var.Subnetname[1]
    address_prefix = var.Subnetaddress[1]

  }
  subnet {
    name           = var.Subnetname[2]
    address_prefix = var.Subnetaddress[2]

  }

  tags = var.tags
}
