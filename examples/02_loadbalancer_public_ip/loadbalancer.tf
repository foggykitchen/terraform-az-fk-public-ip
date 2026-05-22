module "loadbalancer" {
  source = "git::https://github.com/mlinxfeld/terraform-az-fk-loadbalancer.git?ref=v1.1.0"

  name                = var.loadbalancer_name
  location            = azurerm_resource_group.fk_rg.location
  resource_group_name = azurerm_resource_group.fk_rg.name

  public_lb        = true
  create_public_ip = false
  public_ip_id     = module.public_ip.id
}
