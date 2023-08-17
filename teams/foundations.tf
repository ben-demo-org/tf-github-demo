module "repository" {
  source  = "mineiros-io/repository/github"
  version = "~> 0.18.0"

  name               = "demo-repo"
  license_template   = "apache-2.0"
  gitignore_template = "Terraform"
  visibility         = "private"
}



module "perl-demo" {
  source  = "mineiros-io/repository/github"
  version = "~> 0.18.0"

  name                   = "perl-demo"
  license_template       = "apache-2.0"
  visibility             = "private"
  description            = "perl-demo"
  homepage_url           = "https://github.com/ben-demo-org/perl-demo"
  topics                 = ["random","stuff" ]
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

  admin_team_ids = [
    "perl"
  ]

  branch_protections_v4 = [
    {
      branch                 = "main"
      enforce_admins         = true

      required_status_checks = {
        strict   = true
        contexts = []
      }

      required_pull_request_reviews = {
        dismiss_stale_reviews           = true
        dismissal_teams                 = []
        require_code_owner_reviews      = true
        required_approving_review_count = 0
      }

      restrictions = {
        teams = ["perl"]
      }
    }
  ]

}