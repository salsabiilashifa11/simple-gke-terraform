# Declaring main provider
provider "google" {
  project = "shifa-personal-project"
  region = "asia-southeast2"
}

# Declaring Terraform specifig config
terraform {
  backend "gcs" {
    bucket = "shifa-personal-project-tf-state"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}