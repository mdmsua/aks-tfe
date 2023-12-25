data "tfe_organization" "main" {}

data "tfe_workspace_ids" "main" {
  for_each     = local.projects
  names        = ["${each.value}-*"]
  organization = data.tfe_organization.main.name
}
