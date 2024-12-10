resource "google_compute_instance" "myapp1" {
  project      = var.gcp-project
  name         = "myapp-${count.index}"
  machine_type = var.machine_type
  count        = 2
  zone         = data.google_compute_zones.available.names[count.index]
  tags         = [tolist(google_compute_firewall.fw_ssh.target_tags)[0], tolist(google_compute_firewall.fw-http.target_tags)[0]]
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }

  }
  network_interface {
    subnetwork = google_compute_subnetwork.mysubnet1.id
    access_config {

    }
  }


}
