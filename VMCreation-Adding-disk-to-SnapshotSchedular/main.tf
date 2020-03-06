resource "google_compute_instance" "default" {
  name         = "${var.vm_name}"
  machine_type = "${var.machine_type}"
  zone         = "${var.zone}"


  boot_disk {
    initialize_params {
      image = "${var.image}"
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "${var.interface}"
  }

  network_interface {
    network = "${var.network}"
}
}

resource "google_compute_disk_resource_policy_attachment" "attachment" {
  name = "${var.policy_name}"
  disk =  google_compute_instance.default.name
  zone = "${var.zone}"
}
