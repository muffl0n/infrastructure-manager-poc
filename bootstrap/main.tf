resource "google_project_service" "config" {
  project            = "infrastructure-manager-poc"
  disable_on_destroy = false

  service = "config.googleapis.com"
}

resource "google_service_account" "infrastructure_manager" {
  project    = "infrastructure-manager-poc"
  account_id = "infrastructure-manager"
}

resource "google_project_iam_member" "infrastructure_manager" {
  project = "infrastructure-manager-poc"
  member  = "serviceAccount:infrastructure-manager@infrastructure-manager-poc.iam.gserviceaccount.com"
  role    = "roles/owner"
}
