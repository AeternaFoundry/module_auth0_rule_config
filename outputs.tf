output "rule_configs_id" {
  description = "Map of id values across all rule_configs, keyed the same as var.rule_configs except keys with no id are omitted"
  value       = { for k, v in auth0_rule_config.rule_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "rule_configs_key" {
  description = "Map of key values across all rule_configs, keyed the same as var.rule_configs except keys with no key are omitted"
  value       = { for k, v in auth0_rule_config.rule_configs : k => v.key if v.key != null && length(v.key) > 0 }
}
output "rule_configs_value" {
  description = "Map of value values across all rule_configs, keyed the same as var.rule_configs except keys with no value are omitted"
  value       = { for k, v in auth0_rule_config.rule_configs : k => v.value if v.value != null && length(v.value) > 0 }
  sensitive   = true
}

