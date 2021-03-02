resource "github_issue_label" "feature_label" {
  count = var.create_issue_labels ? 1 : 0
  repository  = github_repository.this.name
  name        = "FEATURE"
  color       = "4a148c"
  description = "Change Type: FEATURE"
}

resource "github_issue_label" "fix_label" {
  count = var.create_issue_labels ? 1 : 0
  repository  = github_repository.this.name
  name        = "FIX"
  color       = "4a148c"
  description = "Change Type: FIX"
}

resource "github_issue_label" "breaking_change_label" {
  count = var.create_issue_labels ? 1 : 0
  repository  = github_repository.this.name
  name        = "BREAKING CHANGE"
  color       = "4a148c"
  description = "Change Type: BREAKING CHANGE"
}

resource "github_issue_label" "bug_label" {
  count = var.create_issue_labels ? 1 : 0
  repository  = github_repository.this.name
  name        = "BUG"
  color       = "b71c1c"
  description = "Bug Type: BUG"
}

resource "github_issue_label" "postmortem_label" {
  count = var.create_issue_labels ? 1 : 0
  repository  = github_repository.this.name
  name        = "POSTMORTEM"
  color       = "b71c1c"
  description = "Bug Type: POSTMORTEM"
}

resource "github_issue_label" "proposal_label" {
  count = var.create_issue_labels ? 1 : 0
  repository  = github_repository.this.name
  name        = "PROPOSAL"
  color       = "0d47a1"
  description = "Planning Document: PROPOSAL"
}

resource "github_issue_label" "feature_request_label" {
  count = var.create_issue_labels ? 1 : 0
  repository  = github_repository.this.name
  name        = "FEATURE REQUEST"
  color       = "0d47a1"
  description = "Planning Document: FEATURE REQUEST"
}


resource "github_issue_label" "golang_label" {
  count = var.create_issue_labels ? 1 : 0
  repository  = github_repository.this.name
  name        = "GOLANG"
  color       = "1b5e20"
  description = "Language/Tool: GOLANG"
}

resource "github_issue_label" "terraform_label" {
  count = var.create_issue_labels ? 1 : 0
  repository  = github_repository.this.name
  name        = "TERRAFORM"
  color       = "1b5e20"
  description = "Language/Tool: TERRAFORM"
}

resource "github_issue_label" "ruby_label" {
  count = var.create_issue_labels ? 1 : 0
  repository  = github_repository.this.name
  name        = "RUBY"
  color       = "1b5e20"
  description = "Language/Tool: RUBY"
}
