resource "google_storage_bucket" "web404_static" {
  force_destroy               = false
  location                    = "US"
  name                        = "${var.project_id}-${var.environment}-web404-static"
  project                     = var.project_id
  storage_class               = "STANDARD"
  uniform_bucket_level_access = false

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}

resource "google_storage_bucket_access_control" "web404_static_access" {
  bucket = google_storage_bucket.web404_static.name
  role   = "READER"
  entity = "allUsers"
}