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
  default     = "fk-pip-basic"
}

variable "domain_name_label" {
  type        = string
  description = "Optional DNS label for the Public IP."
  default     = null
}
