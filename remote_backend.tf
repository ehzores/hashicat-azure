terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "jdm-solutions"
    workspaces {
      name = "hashicat-azure"
    }
  }
}
