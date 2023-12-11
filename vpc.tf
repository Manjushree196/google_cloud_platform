provider "google" {

credentials = file("credential.json")

project = "tough-entry-399404"

region = "asia-northeast1"

}

resource "google_compute_network" "vpc_network" {

name = "terraform-vpc"

auto_create_subnetworks = "false"

}

resource "google_compute_subnetwork" "public-subnetwork" {

name = "terraform-subnet"

ip_cidr_range = "10.2.0.0/24"

region = "asia-northeast1"

network = google_compute_network.vpc_network.name

}
