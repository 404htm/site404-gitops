provider "google" {
  project = var.project_id
  region  = "us-east4"
}

terraform {
  backend "gcs" {
    prefix = "env/dev"
  }
}
