resource "google_compute_instance" "private_vm" {
  name         = "roshani-vm"
  machine_type = "e2-micro"
  zone         = "${var.region}-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network    = var.vpc_id
    subnetwork = var.subnet_id
  }
}

/*resource "google_compute_instance" "public_vm" {
  name         = "public-vm"
  machine_type = "e2-micro"
  zone         = "${var.region}-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network    = var.vpc_id
    subnetwork = var.subnet_id
    access_config {
      
    }
  }
*/