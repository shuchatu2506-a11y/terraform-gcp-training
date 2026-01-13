terraform {
  backend "gcs" {
    bucket  = "gcp-devops-terraform-state-481206"
    prefix  = "terraform/dev"
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}