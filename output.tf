output "server_id"{
  value = "${sakuracloud_server.server.id}"
}
output "ssh_key_id"{
  value = "${sakuracloud_ssh_key.key.id}"
}
output "disk_id"{
  value = "${sakuracloud_disk.disk.id}"
}
output "ip_address" {
  value = "${sakuracloud_server.server.base_nw_ipaddress}"
}
output "ssh_command" {
  value = "${format("ssh ubuntu@%s -i %s" , sakuracloud_server.server.base_nw_ipaddress , var.ssh_keyfile)}"
}