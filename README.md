# terraform-az-fk-public-ip

This repository contains a reusable **Terraform / OpenTofu module** and progressive examples for deploying **Azure Public IP** resources in a clean, explicit, and architecture-aware way.

It is part of the **[FoggyKitchen.com training ecosystem](https://foggykitchen.com/courses/azure-fundamentals-terraform-course/)** and is designed as a dedicated **public IP identity building block** for Azure networking.

---

## Purpose

The goal of this repository is to provide a **clear, educational, and composable reference implementation** for **Azure Public IP** using Infrastructure as Code.

It focuses on:

- Public IP as a **first-class Azure networking resource**
- Explicit modeling of:
  - allocation method
  - SKU and SKU tier
  - DNS label and FQDN
  - IP version and zones
  - DDoS protection mode
- Clean integration with:
  - NAT Gateway
  - Bastion
  - Load Balancer
  - public-facing workloads

This is **not** a landing zone, platform framework, or full connectivity stack.  
It is a **learning-first building block** designed to integrate cleanly with other FoggyKitchen modules.

---

## What the Module Does

The module creates:

- one Azure Public IP resource
- optional DNS label
- optional zones
- optional IP tags
- optional DDoS protection settings

The module intentionally does **not** create or manage:

- Virtual Networks or subnets
- NAT Gateway
- Load Balancer
- Bastion
- Virtual Machines

Each of those concerns belongs in its own dedicated module.

---

## Repository Structure

```bash
terraform-az-fk-public-ip/
├── examples/
│   ├── 01_basic_public_ip/
│   ├── 02_loadbalancer_public_ip/
│   └── README.md
├── main.tf
├── inputs.tf
├── outputs.tf
├── versions.tf
├── LICENSE
└── README.md
```

---

## Example Usage

```hcl
module "public_ip" {
  source = "git::https://github.com/foggykitchen/terraform-az-fk-public-ip.git?ref=v1.0.0"

  name                = "fk-pip"
  location            = "westeurope"
  resource_group_name = "fk-rg"

  allocation_method = "Static"
  sku               = "Standard"
  domain_name_label = "foggykitchen-demo"

  tags = {
    project = "foggykitchen"
    env     = "dev"
  }
}
```

---

## Inputs

| Variable | Description |
|------|-------------|
| `name` | Name of the Public IP |
| `location` | Azure region |
| `resource_group_name` | Name of the resource group |
| `allocation_method` | Public IP allocation method |
| `sku` | Public IP SKU |
| `sku_tier` | Public IP SKU tier |
| `ip_version` | IP version |
| `idle_timeout_in_minutes` | Idle timeout |
| `domain_name_label` | Optional DNS label |
| `reverse_fqdn` | Optional reverse FQDN |
| `zones` | Optional zones |
| `ddos_protection_mode` | DDoS protection mode |
| `ddos_protection_plan_id` | Optional DDoS protection plan ID |
| `ip_tags` | Optional IP tags |
| `tags` | Optional tags |

---

## Outputs

| Output | Description |
|------|-------------|
| `id` | Public IP resource ID |
| `name` | Public IP resource name |
| `ip_address` | Allocated public IP address |
| `fqdn` | Allocated FQDN |
| `domain_name_label` | Configured DNS label |
| `ip_version` | IP version |

---

## Design Philosophy

- Public IP should be **modeled explicitly**, not hidden inside unrelated networking modules
- Public reachability and outbound identity are **architectural decisions**
- One module = one responsibility
- Public IP ownership should remain **auditable and composable**

This repository intentionally avoids burying Public IP behavior behind unrelated service abstractions.

---

## Related Modules & Training

- [terraform-az-fk-natgw](https://github.com/foggykitchen/terraform-az-fk-natgw)
- [terraform-az-fk-loadbalancer](https://github.com/foggykitchen/terraform-az-fk-loadbalancer)
- [terraform-az-fk-bastion](https://github.com/mlinxfeld/terraform-az-fk-bastion)
- [terraform-az-fk-vnet](https://github.com/foggykitchen/terraform-az-fk-vnet)

---

## License

Licensed under the **Universal Permissive License (UPL), Version 1.0**.  
See [LICENSE](LICENSE) for details.

---

© 2026 [FoggyKitchen.com](https://foggykitchen.com) - Cloud. Code. Clarity.
