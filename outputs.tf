output "sql_tiers_lookup_id" {
  description = "Map of id values across all sql_tiers_lookup, keyed the same as var.sql_tiers_lookup except keys with no id are omitted"
  value       = { for k, v in data.google_sql_tiers.sql_tiers_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sql_tiers_lookup_project" {
  description = "Map of project values across all sql_tiers_lookup, keyed the same as var.sql_tiers_lookup except keys with no project are omitted"
  value       = { for k, v in data.google_sql_tiers.sql_tiers_lookup : k => v.project if v.project != null && length(v.project) > 0 }
}
output "sql_tiers_lookup_tiers" {
  description = "Map of tiers values across all sql_tiers_lookup, keyed the same as var.sql_tiers_lookup except keys with no tiers are omitted"
  value       = { for k, v in data.google_sql_tiers.sql_tiers_lookup : k => v.tiers if v.tiers != null && length(v.tiers) > 0 }
}

