resource "tfe_workspace" "main" {
  for_each              = var.workspaces
  name                  = "${var.project.name}-${each.value}"
  project_id            = var.project.id
  allow_destroy_plan    = true
  file_triggers_enabled = false
  speculative_enabled   = false
}
