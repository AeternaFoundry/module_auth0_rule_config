variable "rule_configs" {
  description = <<EOT
Map of rule_configs, attributes below
Required:
    - key
    - value
EOT

  type = map(object({
    key   = string
    value = string
  }))
}

