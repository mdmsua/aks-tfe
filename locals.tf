locals {
  projects   = toset(["wan", "hub", "spoke", "cluster"])
  workspaces = { for project in local.projects : project => setsubtract(keys(data.tfe_workspace_ids.main[project].full_names), [for workspace in lookup(var.workspaces, project, []) : "${project}-${workspace}"]) }
}
