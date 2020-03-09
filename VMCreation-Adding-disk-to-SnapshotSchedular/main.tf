resource "google_compute_instance" "migration" {
  name         = "usg-n-${var.regionshort}-${var.env}-tmp-migration"
  machine_type = var.machine_type
  zone         = var.zone

  tags = ["no-ip"]

  can_ip_forward = false
  allow_stopping_for_update = false

  boot_disk {
    initialize_params {
      image = var.image
      type = "pd-standard"
      size = var.disk_size
   }
  }

  network_interface {
    subnetwork = var.kube_subnetwork
  }

}

resource "google_compute_disk_resource_policy_attachment" "attachment" {
  name = "${var.policy_name}"
  disk =  google_compute_instance.default.name
  zone = "${var.zone}"
}
