output "rule_configs_id" {
  description = "Map of id values across all rule_configs, keyed the same as var.rule_configs"
  value       = { for k, v in auth0_rule_config.rule_configs : k => v.id }
}
output "rule_configs_key" {
  description = "Map of key values across all rule_configs, keyed the same as var.rule_configs"
  value       = { for k, v in auth0_rule_config.rule_configs : k => v.key }
}
output "rule_configs_value" {
  description = "Map of value values across all rule_configs, keyed the same as var.rule_configs"
  value       = { for k, v in auth0_rule_config.rule_configs : k => v.value }
  sensitive   = true
}

