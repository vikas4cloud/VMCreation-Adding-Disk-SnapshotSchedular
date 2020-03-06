module "VMCreation-Adding-disk-to-SnapshotSchedular" {
  source = "./VMCreation-Adding-disk-to-SnapshotSchedular"

  vm_name      = "${var.vm_name}"
  zone         = "${var.zone}"
  network      = "${var.network}"
  machine_type = "${var.machine_type}"
  image        = "${var.image}"
  interface    = "${var.interface}"
  policy_name  = "${var.policy_name}"
}
