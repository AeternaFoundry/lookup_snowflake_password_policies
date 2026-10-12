output "password_policies_lookup_id" {
  description = "Map of id values across all password_policies_lookup, keyed the same as var.password_policies_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_password_policies.password_policies_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "password_policies_lookup_in" {
  description = "Map of in values across all password_policies_lookup, keyed the same as var.password_policies_lookup except keys with no in are omitted"
  value       = { for k, v in data.snowflake_password_policies.password_policies_lookup : k => one(v.in) if v.in != null && length(v.in) > 0 }
}
output "password_policies_lookup_like" {
  description = "Map of like values across all password_policies_lookup, keyed the same as var.password_policies_lookup except keys with no like are omitted"
  value       = { for k, v in data.snowflake_password_policies.password_policies_lookup : k => v.like if v.like != null && length(v.like) > 0 }
}
output "password_policies_lookup_limit" {
  description = "Map of limit values across all password_policies_lookup, keyed the same as var.password_policies_lookup except keys with no limit are omitted"
  value       = { for k, v in data.snowflake_password_policies.password_policies_lookup : k => one(v.limit) if v.limit != null && length(v.limit) > 0 }
}
output "password_policies_lookup_on" {
  description = "Map of on values across all password_policies_lookup, keyed the same as var.password_policies_lookup except keys with no on are omitted"
  value       = { for k, v in data.snowflake_password_policies.password_policies_lookup : k => one(v.on) if v.on != null && length(v.on) > 0 }
}
output "password_policies_lookup_password_policies" {
  description = "Map of password_policies values across all password_policies_lookup, keyed the same as var.password_policies_lookup except keys with no password_policies are omitted"
  value       = { for k, v in data.snowflake_password_policies.password_policies_lookup : k => v.password_policies if v.password_policies != null && length(v.password_policies) > 0 }
}
output "password_policies_lookup_starts_with" {
  description = "Map of starts_with values across all password_policies_lookup, keyed the same as var.password_policies_lookup except keys with no starts_with are omitted"
  value       = { for k, v in data.snowflake_password_policies.password_policies_lookup : k => v.starts_with if v.starts_with != null && length(v.starts_with) > 0 }
}
output "password_policies_lookup_with_describe" {
  description = "Map of with_describe values across all password_policies_lookup, keyed the same as var.password_policies_lookup except keys with no with_describe are omitted"
  value       = { for k, v in data.snowflake_password_policies.password_policies_lookup : k => v.with_describe if v.with_describe != null }
}

