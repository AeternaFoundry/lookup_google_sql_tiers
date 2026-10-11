variable "sql_tiers_lookup" {
  description = <<EOT
Map of sql_tiers_lookup, attributes below
Optional:
    - project
EOT

  type = map(object({
    project = optional(string)
  }))
}

