resource "google_storage_bucket" "web-storage-app" {
  force_destroy               = false
  location                    = "US"
  name                        = "${var.environment}-web-storage-app"
  project                     = var.project_id
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}