/*****************
 * SSH key
 *****************/
resource "sakuracloud_ssh_key" "key" {
  name = "${var.ssh_name}"
  public_key = "${file("${var.ssh_keyfile}.pub")}"
}

/*****************
 * Disk
 *****************/
resource "sakuracloud_disk" "disk" {
  name = "${var.disk_name}"
  source_archive_name = "${var.archive_name}"
  ssh_key_ids = ["${sakuracloud_ssh_key.key.id}}"]
  size = "${var.disk_size}"
  disable_pw_auth = true
  zone = "${var.zone}"
}

/*****************
 * Server
 *****************/
resource "sakuracloud_server" "server" {
  name = "${var.server_name}"
  disks = ["${sakuracloud_disk.disk.id}"]
  additional_interfaces = [ "${compact(split("," , var.switch_ids))}" ]
  packet_filter_ids = [ "${compact(split("," , var.packet_filter_ids))}" ]
  tags = ["@virtio-net-pci"]
  core = "${var.core}"
  memory = "${var.memory}"
  zone = "${var.zone}"
}
