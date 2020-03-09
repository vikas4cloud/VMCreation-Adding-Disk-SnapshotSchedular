module "VMCreation-Adding-disk-to-SnapshotSchedular" {
  source = "./VMCreation-Adding-disk-to-SnapshotSchedular"

  env      =     "${var.env}"
  zone           "${var.zone}"
  image        = "${var.image}"
  disk_size   =  "${var.disk_size}"
  regionshort   =  "${var.regionshort}"
  machine_type = "${var.machine_type}"
  kube_subnetwork    = "${var.kube_subnetwork}"
  policy_name  = "${var.policy_name}"
}
