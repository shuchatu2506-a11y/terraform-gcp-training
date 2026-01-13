terraform {
  backend "gcs" {
    bucket = "gcp-devops-terraform-state-481206"
    prefix = "terraform-gcp-training/stage"
  }
}