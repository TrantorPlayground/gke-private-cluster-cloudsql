provider "google" {
  version = "~> 3.44.0"
  credentials = file("gcp-credentials.json")
  project = var.project
  region  = var.region
  zone    = var.zone
}

provider "google-beta" {
  version = "~> 3.44.0"
  credentials = file("gcp-credentials.json")
  project = var.project
  region  = var.region
  zone    = var.zone
}

provider "random" {
  version =  "~> 2.2.1"
}

provider "template" {
  version = "~> 2.2.0"
}

data "google_client_config" "current" {}

# Update the remote state provider below
terraform {
  backend "remote" {
    organization = "vibhor"

    workspaces {
      name = "demo"
    }
  }
}
