data "databricks_workspace_iam_workspace_assignments_v2" "workspace_iam_workspace_assignments_v2_lookup" {
  for_each = var.workspace_iam_workspace_assignments_v2_lookup

  page_size       = each.value.page_size
  provider_config = each.value.provider_config
}

