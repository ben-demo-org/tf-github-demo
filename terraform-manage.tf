module "tf-repo" {
  source  = "mineiros-io/repository/github"
  version = "~> 0.18.0"

  name               = "tf-github-demo"
  license_template   = "gpl-3.0"
  gitignore_template = "Terraform"
  visibility         = "private"
}