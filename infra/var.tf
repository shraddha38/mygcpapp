locals {
  project_id = "mygcpapp-451021"
  region = "northamerica-northeast1"
  bucket_name = "mygcpapp-451021-bucket"
  apis = [
    "artifactregistry.googleapis.com",
    "run.googleapis.com",
    "cloudbuild.googleapis.com"
  ]
}