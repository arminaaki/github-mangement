resource "github_repository" "this" {
  topics = ["repo-managed-by-terraform"]

  name        = var.name
  description = var.description


  archive_on_destroy     = true
  delete_branch_on_merge = true
  auto_init              = true
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  vulnerability_alerts   = true
  visibility             = "public"
}

resource "github_branch_protection" "default" {
  repository_id = github_repository.this.id
  pattern = github_repository.this.default_branch
}
