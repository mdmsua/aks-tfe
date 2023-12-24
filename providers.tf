terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~>0.50"
    }
  }
  cloud {
    organization = "Megamango"
    workspaces {
      name = "tfc"
    }
  }
}

provider "tfe" {
  organization = "Megamango"
  token        = var.token
}
