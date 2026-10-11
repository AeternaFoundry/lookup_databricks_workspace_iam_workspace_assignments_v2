output "workspace_iam_workspace_assignments_v2_lookup_page_size" {
  description = "Map of page_size values across all workspace_iam_workspace_assignments_v2_lookup, keyed the same as var.workspace_iam_workspace_assignments_v2_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_workspace_iam_workspace_assignments_v2.workspace_iam_workspace_assignments_v2_lookup : k => v.page_size if v.page_size != null }
}
output "workspace_iam_workspace_assignments_v2_lookup_provider_config" {
  description = "Map of provider_config values across all workspace_iam_workspace_assignments_v2_lookup, keyed the same as var.workspace_iam_workspace_assignments_v2_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_workspace_iam_workspace_assignments_v2.workspace_iam_workspace_assignments_v2_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "workspace_iam_workspace_assignments_v2_lookup_workspace_assignments" {
  description = "Map of workspace_assignments values across all workspace_iam_workspace_assignments_v2_lookup, keyed the same as var.workspace_iam_workspace_assignments_v2_lookup except keys with no workspace_assignments are omitted"
  value       = { for k, v in data.databricks_workspace_iam_workspace_assignments_v2.workspace_iam_workspace_assignments_v2_lookup : k => v.workspace_assignments if v.workspace_assignments != null && length(v.workspace_assignments) > 0 }
}

