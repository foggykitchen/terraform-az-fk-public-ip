resource "azurerm_public_ip" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name

  allocation_method       = var.allocation_method
  sku                     = var.sku
  sku_tier                = var.sku_tier
  ip_version              = var.ip_version
  idle_timeout_in_minutes = var.idle_timeout_in_minutes
  domain_name_label       = var.domain_name_label
  reverse_fqdn            = var.reverse_fqdn
  zones                   = var.zones
  ddos_protection_mode    = var.ddos_protection_mode
  ddos_protection_plan_id = var.ddos_protection_plan_id
  ip_tags                 = var.ip_tags
  tags                    = var.tags

  lifecycle {
    precondition {
      condition     = var.ddos_protection_mode != "Enabled" || var.ddos_protection_plan_id != null
      error_message = "ddos_protection_plan_id must be provided when ddos_protection_mode is set to Enabled."
    }
  }
}
