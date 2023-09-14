resource "google_compute_network" "default" {
  name                    = "default"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "default" {
  name          = "default"
  ip_cidr_range = "10.156.0.0/20"
  network       = google_compute_network.default.id
}
