terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.0"
    }
  }
}

provider "google" {
  region                      = var.region
  zone                        = var.zone
  impersonate_service_account = var.service_account_email
}