resource "tfe_workspace" "main" {
  for_each              = setunion(var.workspaces, local.workspaces)
  name                  = each.value
  allow_destroy_plan    = true
  file_triggers_enabled = false
  speculative_enabled   = false
}
