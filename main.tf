data "google_sql_tiers" "sql_tiers_lookup" {
  for_each = var.sql_tiers_lookup

  project = each.value.project
}

