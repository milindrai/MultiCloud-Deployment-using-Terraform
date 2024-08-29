# GCP SQL Instance
resource "google_sql_database_instance" "example" {
  name             = "example-instance"
  database_version = "POSTGRES_13"
  region           = "us-central1"

  settings {
    tier = "db-f1-micro"
  }
}
