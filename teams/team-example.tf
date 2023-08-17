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
}
