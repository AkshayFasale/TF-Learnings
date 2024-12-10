# Resource Block: Create a Compute Engine instance
resource "google_compute_instance" "myapp1" {
  # Meta-Argument: for each
  for_each     = toset(data.google_compute_zones.available.names)
  name         = "myapp1-vm-${each.key}"
  machine_type = var.machine_type
  zone         = each.key
  tags         = [tolist(google_compute_firewall.fw_ssh.target_tags)[0], tolist(google_compute_firewall.fw_http.target_tags)[0]]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  # Install Webserver

  network_interface {
    subnetwork = google_compute_subnetwork.mysubnet.id
    access_config {
      # Include this section to give the VM an external IP address
    }
  }
}