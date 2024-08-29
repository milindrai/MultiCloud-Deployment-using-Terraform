# GCP Cloud Storage Bucket
resource "google_storage_bucket" "example" {
  name          = "example-bucket"
  location      = "US"
  force_destroy = true
}
