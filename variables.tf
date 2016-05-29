/*****************
 * Variables
 *****************/
variable "ssh_keyfile"{ default = "~/.ssh/id_rsa" }
variable "zone" { default = "is1a" }
variable "switch_ids" { default = "" }
variable "packet_filter_ids" { default = "" }
variable "server_name" {default = "ubuntu_server"}
variable "ssh_name" {default = "ubuntu_server_key"}
variable "disk_name" {default = "ubuntu_server_disk"}
variable "archive_name" {default = "Ubuntu Server 16.04 LTS 64bit"}
variable "disk_size" { default = "20"}
variable "core" { default = "1" }
variable "memory" { default = "1" }
