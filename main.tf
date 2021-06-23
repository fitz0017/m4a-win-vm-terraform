provider "google" {
  project     = "ts-colts-nonprod-demo"
  region      = "us-central1"
#   credentials = var 
}

resource "google_compute_network" "vpc_network {
  name = "m4a-network" 
}

terraform {
  backend "gcs" {
  bucket = "ts-colts-nonprod-demo-tf-bucket"
  prefix = "terraform1"
  }
}
