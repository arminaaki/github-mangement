# Using a single workspace:
terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "arminak"

    workspaces {
      name = "github-management"
    }
  }
}
