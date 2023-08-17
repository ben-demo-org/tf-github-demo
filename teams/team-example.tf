module "import-test" {
  source  = "mineiros-io/repository/github"
  version = "~> 0.18.0"

  name               = "import-test"
  license_template   = "apache-2.0"
  gitignore_template = "Terraform"
  visibility         = "private"
}