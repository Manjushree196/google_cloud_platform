provider "google" {

credentials = file("~/gcp/access-keys.json")

project = "give your project ID here"

region = "asia-northeast1"

}

resource "google_compute_network" "vpc_network" {

name = "terraform-vpc"

auto_create_subnetworks = "false"

}

resource "google_compute_subnetwork" "public-subnetwork" {

name = "terraform-subnet"

ip_cidr_range = "10.2.0.0/16"

region = "asia-northeast1"

network = google_compute_network.vpc_network.name

}
