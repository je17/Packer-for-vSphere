locals {
  // bios boot options
  /*linux_boot_command = [
    "<up><tab><wait>",
    " inst.ks=http://${var.packer_http_ip}:{{ .HTTPPort }}/ks.cfg ip=${var.linux_ip}::${var.linux_gateway}:${var.linux_netmask}::::${var.linux_dns1}:${var.linux_dns2} <wait>",
    "<enter><wait>"

  ]*/
  // efi-secure boot options
  linux_boot_command = [
    "e<down><down><end><bs><bs><bs><bs><bs>text ks=http://${var.packer_http_ip}:{{ .HTTPPort }}/ks.cfg ip=${var.linux_ip}::${var.linux_gateway}:${var.linux_netmask}::::${var.linux_dns1}:${var.linux_dns2}<leftCtrlOn>x<leftCtrlOff>"
  ]
}
