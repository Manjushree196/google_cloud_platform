provider "google" {

      #path for GCP service account credentials

      credentials = file("credential.json")

      # GCP project ID

      project     = "tough-entry-399404"

      # Any region of your choice

      region      = "us-east"

      # Any zone of your choice      

      zone        = "us-east1-b"

    }

     resource "google_storage_bucket" "mybucket0616" {
  name     = "mybucket0616"
  location = "europe-west1"
  storage_class = "REGIONAL"
  force_destroy = true

     }
