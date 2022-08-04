resource "google_storage_bucket" "tf-storage-state" {
  name          = "tf-storage-state"
  force_destroy = false
  location      = "US"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}