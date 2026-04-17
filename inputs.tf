variable "name" {
  description = "Name of the Azure Public IP resource."
  type        = string
}

variable "location" {
  description = "Azure region where the Public IP is deployed."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "allocation_method" {
  description = "Public IP allocation method."
  type        = string
  default     = "Static"

  validation {
    condition     = contains(["Static", "Dynamic"], var.allocation_method)
    error_message = "allocation_method must be either 'Static' or 'Dynamic'."
  }
}

variable "sku" {
  description = "Public IP SKU."
  type        = string
  default     = "Standard"

  validation {
    condition     = contains(["Basic", "Standard"], var.sku)
    error_message = "sku must be either 'Basic' or 'Standard'."
  }
}

variable "sku_tier" {
  description = "SKU tier for the Public IP. Use Global when required by the Azure service design."
  type        = string
  default     = "Regional"

  validation {
    condition     = contains(["Regional", "Global"], var.sku_tier)
    error_message = "sku_tier must be either 'Regional' or 'Global'."
  }
}

variable "ip_version" {
  description = "IP version of the Public IP."
  type        = string
  default     = "IPv4"

  validation {
    condition     = contains(["IPv4", "IPv6"], var.ip_version)
    error_message = "ip_version must be either 'IPv4' or 'IPv6'."
  }
}

variable "idle_timeout_in_minutes" {
  description = "Idle timeout in minutes."
  type        = number
  default     = 4
}

variable "domain_name_label" {
  description = "Optional DNS label for the Public IP."
  type        = string
  default     = null
}

variable "reverse_fqdn" {
  description = "Optional reverse FQDN for the Public IP."
  type        = string
  default     = null
}

variable "zones" {
  description = "Optional availability zones for the Public IP."
  type        = list(string)
  default     = null
}

variable "ddos_protection_mode" {
  description = "DDoS protection mode for the Public IP."
  type        = string
  default     = "VirtualNetworkInherited"

  validation {
    condition     = contains(["VirtualNetworkInherited", "Enabled", "Disabled"], var.ddos_protection_mode)
    error_message = "ddos_protection_mode must be one of: VirtualNetworkInherited, Enabled, Disabled."
  }
}

variable "ddos_protection_plan_id" {
  description = "Optional DDoS protection plan ID used when ddos_protection_mode is Enabled."
  type        = string
  default     = null
}

variable "ip_tags" {
  description = "Optional IP tags applied to the Public IP."
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "Tags applied to the Public IP."
  type        = map(string)
  default     = {}
}
