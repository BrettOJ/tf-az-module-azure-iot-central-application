resource "azurerm_iotcentral_application" "iotcentral_application" {
  name                          = module.vnp_name.naming_convention_output[var.naming_convention_info.name].names.0
  resource_group_name           = var.resource_group_name
  location                      = var.location
  sub_domain                    = var.sub_domain
  display_name                  = var.display_name
  public_network_access_enabled = var.public_network_access_enabled
  sku                           = var.sku
  template                      = var.template
  tags                          = var.tags
}