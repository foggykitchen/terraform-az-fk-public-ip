output "public_ip_id" {
  value = module.public_ip.id
}

output "public_ip_address" {
  value = module.public_ip.ip_address
}

output "loadbalancer_id" {
  value = module.loadbalancer.lb_id
}

output "frontend_ip_configuration_name" {
  value = module.loadbalancer.frontend_ip_configuration_name
}
