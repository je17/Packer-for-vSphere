source "vsphere-iso" "main" {
  convert_to_template = true

  // Connection Configuration
  vcenter_server      = var.vcenter_url
  insecure_connection = true
  datacenter          = var.vcenter_datacenter
  username            = var.vcenter_username
  password            = var.vcenter_password

  // Location Configuration
  host      = var.esxi_host
  datastore = var.esxi_vm_datastore
  folder    = var.esxi_vm_folder
  vm_name   = "${var.linux_distro}-${var.linux_version}-template"

  iso_paths    = ["[${var.esxi_iso_datastore}] ${var.esxi_iso_folder}/${var.linux_iso_name}"]
  iso_checksum = var.linux_iso_checksum
  cdrom_type   = "sata"
  remove_cdrom = true

  vm_version           = var.vm_virtual_hardware_version
  guest_os_type        = var.vm_guest_os_identifier
  notes                = "Built by Packer ${packer.version} on ${local.timestamp}."
  firmware             = var.vm_firmware
  CPUs                 = 1
  cpu_cores            = 2
  RAM                  = 2048
  disk_controller_type = ["pvscsi"]
  storage {
    disk_size             = var.vm_disk_size
    disk_thin_provisioned = true
  }
  network_adapters {
    network      = "VM Network"
    network_card = "vmxnet3"
  }
  tools_upgrade_policy = true

  // Run Configuration
  boot_order = "disk,cdrom"

  http_directory = var.packer_http_directory
  http_port_max  = var.packer_http_port
  http_port_min  = var.packer_http_port

  boot_wait    = "3s"
  boot_command = local.linux_boot_command

  // Extra Configuration Parameters
  configuration_parameters = {
    "disk.EnableUUID" = "TRUE"
  }

  // Communicator configuration
  communicator           = "ssh"
  ssh_username           = var.linux_ssh_username
  ssh_password           = var.linux_ssh_password
  ssh_timeout            = "30m"
  ssh_handshake_attempts = 1000
}

locals {
  // = "https://www.packer.io/docs/templates/hcl_templates/functions/datetime/formatdate"
  timestamp = formatdate("EEE, DD MMM YYYY hh:mm:ss ZZZ", timestamp())
}
