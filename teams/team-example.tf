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
  visibility         = "private"
}


module "import-test" {
  source  = "mineiros-io/repository/github"
  version = "~> 0.18.0"

  name               = "import-test"
  license_template   = "apache-2.0"
  gitignore_template = "Terraform"
  visibility         = "private"
}
