locals {
  workspaces = setsubtract(keys(data.tfe_workspace_ids.main.full_names), ["tfc"])
}
