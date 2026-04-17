module "public_ip" {
  source = "git::https://github.com/mlinxfeld/terraform-az-fk-public-ip.git?ref=v1.0.0"

  name                = var.public_ip_name
  location            = azurerm_resource_group.fk_rg.location
  resource_group_name = azurerm_resource_group.fk_rg.name
  domain_name_label   = var.domain_name_label
}
