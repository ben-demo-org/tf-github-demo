import {
  to = module.import-test.github_repository.repository
  id = "import-test"
}

module "import-test" {
  source  = "mineiros-io/repository/github"
  version = "~> 0.18.0"

  name               = "import-test"
  license_template   = "apache-2.0"
  gitignore_template = "Terraform"
  visibility         = "public"
}


import {
  to = module.show-import.github_repository.repository
  id = "show-import"
}

module "show-import" {
  source  = "mineiros-io/repository/github"
  version = "~> 0.18.0"

  name               = "show-import"
  license_template   = "apache-2.0"
  gitignore_template = "Terraform"
  visibility         = "public"


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
        required_approving_review_count = 0
      }

      restrictions = {
        teams = []
      }
    }
  ]
}
