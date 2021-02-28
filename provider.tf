terraform {
  required_version = "0.14.7"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "4.5.0"
    }
  }
}

provider "github" {
  owner = var.owner
  token = var.github_token
}
