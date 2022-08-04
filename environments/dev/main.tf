provider "google" {
  project = var.project_id
  region = "us-east4"
}

terraform {
 backend "gcs" {
   bucket  = "shared-tf-storage-state"
   prefix  = "terraform/state"
 }
}