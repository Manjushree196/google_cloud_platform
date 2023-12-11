provider "google" {
      #path for GCP service account credentials
      credentials = file("credential.json")
      # GCP project ID
      project     = "spatial-garden-356105"
      # Any region of your choice
      region      = "us-central1"
      # Any zone of your choice    
      zone        = "us-central1-c"
    }
     resource "google_compute_instance" "vm_instance" {
      name         = "gcptutorials-tf"
      machine_type = "f1-micro"

      boot_disk {
        initialize_params {
          image = "debian-cloud/debian-9"
        }
      }  
      network_interface {      
        network = "default"
        access_config {
        }
      }
    }
