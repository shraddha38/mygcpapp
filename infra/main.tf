terraform {
  required_version = ">= 1.0"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}

provider "google" {
  project = local.project_id
  region = local.region
}


resource "google_storage_bucket" "frontend_static" {
  name          =   local.bucket_name
  location      =  local.region
  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "index.html"
  }
}