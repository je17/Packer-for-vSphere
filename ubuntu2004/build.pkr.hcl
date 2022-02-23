build {
  name    = "Building ${var.linux_distro}-${var.linux_version}"
  sources = ["source.vsphere-iso.main"]

  provisioner "shell-local" {
    // = "https://www.packer.io/docs/provisioners/shell-local"
    inline = ["ansible-playbook /etc/ansible/playbooks/linux-setup.yml"]
  }
}
