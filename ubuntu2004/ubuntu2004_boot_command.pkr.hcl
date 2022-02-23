locals {
  // bios boot options
  /*linux_boot_command = [
    "<enter><wait><enter><wait>",
    "<f6><wait>",
    "<esc><wait>",
    "autoinstall ip=${var.linux_ip}::${var.linux_gateway}:${var.linux_netmask}::::${var.linux_dns1}:${var.linux_dns2} ds=nocloud-net;s=http://${var.packer_http_ip}:{{ .HTTPPort }}/ <wait>",
    "<enter><wait>"
  ]*/
  // efi-secure boot options
  linux_boot_command = [
    "<esc><wait>",
    "<esc><wait>",
    "linux /casper/vmlinuz --- autoinstall ip=${var.linux_ip}::${var.linux_gateway}:${var.linux_netmask}::::${var.linux_dns1}:${var.linux_dns2} ds=\"nocloud-net;s=http://${var.packer_http_ip}:{{ .HTTPPort }}/\"<enter><wait>",
    "initrd /casper/initrd<enter><wait>",
    "boot<enter>"
  ]
}
