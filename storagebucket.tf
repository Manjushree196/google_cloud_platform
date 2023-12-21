provider "google" {

      #path for GCP service account credentials

      credentials = file("credential.json")

      # GCP project ID

      project     = "braided-haiku-407013"

      # Any region of your choice

      region      = "us-east"

      # Any zone of your choice      

      zone        = "us-east1-b"

    }

     resource "google_storage_bucket" "storage_bucket" {
  name     = "braided-haiku-407013-1"
  location = "europe-west1"
  storage_class = "REGIONAL"
  force_destroy = true

     }
