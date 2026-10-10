resource "auth0_rule_config" "rule_configs" {
  for_each = var.rule_configs

  key   = each.value.key
  value = each.value.value
}

