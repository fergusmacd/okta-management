# add the terraform cloud backend for running locally
terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "mononoke"
    workspaces {
      name = "okta-management"
    }
  }
}
