import {
  to = module.github-demo.github_repository.repository
  id = "tf-github-demo"
}


module "github-demo" {
  source  = "mineiros-io/repository/github"
  version = "~> 0.18.0"

  name                   = "tf-github-demo"
  visibility             = "public"
  description            = "Demo"
  homepage_url           = "https://github.com/ben-demo-org/tf-github-demo"
  topics                 = ["random", "stuff"]
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  has_downloads          = true
  default_branch         = "main"
  allow_squash_merge     = false
  allow_merge_commit     = true
  allow_rebase_merge     = false
  delete_branch_on_merge = true
  vulnerability_alerts   = true

  admin_team_ids = []

  branch_protections_v3 = [
    {
      branch         = "main"
      enforce_admins = true

      required_status_checks = {
        strict   = true
        contexts = []
      }

      required_pull_request_reviews = {
        dismiss_stale_reviews           = true
        dismissal_teams                 = []
        require_code_owner_reviews      = true
        required_approving_review_count = 1
      }

      restrictions = {
        teams = []
      }
    }
  ]
}