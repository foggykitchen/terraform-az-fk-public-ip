variable "location" {
  type        = string
  description = "Azure region."
  default     = "westeurope"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name."
  default     = "fk-rg"
}

variable "public_ip_name" {
  type        = string
  description = "Public IP resource name."
  default     = "fk-pip-lb"
}

variable "loadbalancer_name" {
  type        = string
  description = "Load Balancer resource name."
  default     = "fk-public-lb"
}
