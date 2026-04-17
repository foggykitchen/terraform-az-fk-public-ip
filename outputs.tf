output "id" {
  description = "Public IP resource ID."
  value       = azurerm_public_ip.this.id
}

output "name" {
  description = "Public IP resource name."
  value       = azurerm_public_ip.this.name
}

output "ip_address" {
  description = "Allocated public IP address."
  value       = azurerm_public_ip.this.ip_address
}

output "fqdn" {
  description = "Allocated FQDN of the Public IP."
  value       = azurerm_public_ip.this.fqdn
}

output "domain_name_label" {
  description = "Configured domain name label."
  value       = azurerm_public_ip.this.domain_name_label
}

output "ip_version" {
  description = "IP version of the Public IP."
  value       = azurerm_public_ip.this.ip_version
}
