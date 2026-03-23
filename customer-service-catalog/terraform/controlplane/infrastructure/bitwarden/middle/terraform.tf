terraform {
  required_providers {
    bitwarden = {
      source  = "maxlaverse/bitwarden"
      version = ">= 0.17.3"
    }
  }
}

provider "bitwarden" {

  access_token = var.access_token

}


