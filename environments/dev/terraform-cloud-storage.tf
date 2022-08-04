resource "google_storage_bucket" "tf-storage-state" {
  name          = "${var.environment}-tf-storage-state"
  force_destroy = false
  location      = "US"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}