resource "tfe_project" "main" {
  for_each = local.projects
  name     = each.value
}

module "workspaces" {
  for_each = local.projects
  source   = "./modules/workspace"
  project = {
    id         = tfe_project.main[each.value].id
    name       = each.value
    workspaces = setunion(lookup(var.workspaces, each.value, []), local.workspaces[each.value])
  }
}
