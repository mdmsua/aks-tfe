data "tfe_organization" "main" {}

data "tfe_workspace_ids" "main" {
  names        = ["*"]
  organization = data.tfe_organization.main.name
}
