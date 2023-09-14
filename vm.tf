resource "google_compute_instance" "default" {
  machine_type = "e2-small"
  name         = "default"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network    = google_compute_network.default.name
    subnetwork = google_compute_subnetwork.default.name
  }
}
