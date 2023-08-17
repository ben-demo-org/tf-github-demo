terraform {
  cloud {
    organization = "Corvius"

    workspaces {
      name = "github-demo"
    }
  }
}