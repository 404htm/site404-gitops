provider "google" {
  project = var.project_id
  region = "us-east4"
}


terraform {
 backend "gcs" {
   bucket  = "tf-storage-state"
   prefix  = "env/dev"
 }
}
