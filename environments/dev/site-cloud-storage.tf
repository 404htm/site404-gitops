resource "google_storage_bucket" "web-application" {
  force_destroy               = true
  location                    = "US"
  name                        = "${var.project_id}_${var.environment}-web-application"
  project                     = var.project_id
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}

resource "google_storage_bucket_access_control" "web-application-access" {
  bucket = google_storage_bucket.web-application.name
  role   = "READER"
  entity = "allUsers"
}


resource "google_storage_bucket" "web-posts" {
  force_destroy               = true
  location                    = "US"
  name                        = "${var.project_id}_${var.environment}-web-posts"
  project                     = var.project_id
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}

resource "google_storage_bucket_access_control" "web-posts-access" {
  bucket = google_storage_bucket.web-posts.name
  role   = "READER"
  entity = "allUsers"
}
