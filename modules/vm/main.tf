resource "google_compute_instance" "this" {
  for_each = var.vms

  name         = "${each.key}-vm"
  machine_type = each.value
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    subnetwork = var.subnet_name

    access_config {}
  }

  metadata = {
    enable-oslogin = "TRUE"
  }
}