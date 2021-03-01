resource "github_issue_label" "feature_label" {
  repository  = github_repository.this.name
  name        = "FEATURE"
  color       = "4a148c"
  description = "Change Type: FEATURE"
}

resource "github_issue_label" "fix_label" {
  repository  = github_repository.this.name
  name        = "FIX"
  color       = "4a148c"
  description = "Change Type: FIX"
}

resource "github_issue_label" "breaking_change_label" {
  repository  = github_repository.this.name
  name        = "BREAKING CHANGE"
  color       = "4a148c"
  description = "Change Type: BREAKING CHANGE"
}

resource "github_issue_label" "bug_label" {
  repository  = github_repository.this.name
  name        = "BUG"
  color       = "b71c1c"
  description = "Bug Type: BUG"
}

resource "github_issue_label" "postmortem_label" {
  repository  = github_repository.this.name
  name        = "POSTMORTEM"
  color       = "b71c1c"
  description = "Bug Type: POSTMORTEM"
}

resource "github_issue_label" "proposal_label" {
  repository  = github_repository.this.name
  name        = "PROPOSAL"
  color       = "0d47a1"
  description = "Planning Document: PROPOSAL"
}

resource "github_issue_label" "feature_request_label" {
  repository  = github_repository.this.name
  name        = "FEATURE REQUEST"
  color       = "0d47a1"
  description = "Planning Document: FEATURE REQUEST"
}

resource "github_issue_label" "circle_ci_label" {
  repository  = github_repository.this.name
  name        = "CIRCLE CI"
  color       = "1b5e20"
  description = "Language/Tool: CIRCLE CI"
}

resource "github_issue_label" "golang_label" {
  repository  = github_repository.this.name
  name        = "GOLANG"
  color       = "1b5e20"
  description = "Language/Tool: GOLANG"
}

resource "github_issue_label" "terraform_label" {
  repository  = github_repository.this.name
  name        = "TERRAFORM"
  color       = "1b5e20"
  description = "Language/Tool: TERRAFORM"
}

resource "github_issue_label" "ruby_label" {
  repository  = github_repository.this.name
  name        = "RUBY"
  color       = "1b5e20"
  description = "Language/Tool: RUBY"
}
