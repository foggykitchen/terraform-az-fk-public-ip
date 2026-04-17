# Azure Public IP with Terraform/OpenTofu – Training Examples

This directory contains all examples used with the **terraform-az-fk-public-ip** module.
The examples are designed as incremental building blocks, starting with a
basic standalone Public IP and then showing how the module can be consumed
by another infrastructure module.

---

## Example Overview

| Example | Title | Key Topics |
|:-------:|:------|:-----------|
| 01 | **Basic Public IP** | Static Public IP, Standard SKU, DNS label |
| 02 | **Public IP for Azure Load Balancer** | Public IP module, external `public_ip_id`, Load Balancer frontend integration |

---

## How to Use

Each example directory contains:

- Terraform/OpenTofu configuration (`.tf`)
- A focused `README.md` explaining the goal of the example
- A minimal, runnable architecture

To run an example:

```bash
cd examples/01_basic_public_ip
tofu init
tofu plan
tofu apply
```

---

## License

Licensed under the **Universal Permissive License (UPL), Version 1.0**.  
See [LICENSE](../LICENSE) for details.
