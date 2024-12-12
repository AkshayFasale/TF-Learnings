# Defining provider

terraform {
  required_version = ">= 1.8.5"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.11.2"
    }
  }

}


provider "google" {
  project = var.gcp_project
  region  = var.gcp_region1
}