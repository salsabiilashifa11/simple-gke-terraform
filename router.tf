resource "google_compute_router" "router" {
  name    = "router"
  region  = "asia-southeast2"
  network = google_compute_network.main.id
}