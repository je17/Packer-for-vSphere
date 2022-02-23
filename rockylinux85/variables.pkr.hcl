variable "vcenter_url" {
  type        = string
  description = "URL of vCenter Server"
}

variable "vcenter_datacenter" {
  type        = string
  description = "vCenter datacenter name"
}

variable "vcenter_username" {
  type        = string
  description = "vCenter Username"
}

variable "vcenter_password" {
  type        = string
  description = "vCenter Password"
  sensitive   = true
}

variable "esxi_host" {
  type        = string
  description = "ESXi host"
}

variable "esxi_vm_datastore" {
  type        = string
  description = "ESXi datastore to store VM"
}

variable "esxi_vm_folder" {
  type        = string
  description = "Folder in ESXi datastore to store VM"
}

variable "esxi_iso_datastore" {
  type        = string
  description = "ESXi datastore to store ISO"
}

variable "esxi_iso_folder" {
  type        = string
  description = "Folder in ESXi datastore to store ISO"
}

variable "vm_virtual_hardware_version" {
  // https://kb.vmware.com/s/article/1003746
  type        = number
  description = "Virtual Hardware Version: https://kb.vmware.com/s/article/1003746"
}

variable "vm_guest_os_identifier" {
  // https://code.vmware.com/apis/358/vsphere/doc/vim.vm.GuestOsDescriptor.GuestOsIdentifier.html
  type        = string
  description = "Guest OS Identifier: https://code.vmware.com/apis/358/vsphere/doc/vim.vm.GuestOsDescriptor.GuestOsIdentifier.html"
}

variable "vm_disk_size" {
  type        = number
  description = "Disk size of VM image"
}

variable "vm_firmware" {
  type        = string
  description = "Firmware of VM image"
  default     = "efi-secure"
}

variable "linux_distro" {
  type        = string
  description = "Linux distribution"
}

variable "linux_version" {
  type        = string
  description = "Linux server version, including minor version"
}

variable "linux_iso_name" {
  type        = string
  description = "Name of Linux server ISO"
}

variable "linux_iso_checksum" {
  type        = string
  description = "SHA256 Checksum for the Linux server ISO"
}

variable "linux_ssh_username" {
  type        = string
  description = "SSH username to access Linux server"
}

variable "linux_ssh_password" {
  type        = string
  description = "SSH password to access Linux server"
  sensitive   = true
}

variable "linux_ip" {
  type        = string
  description = "IP Address of Linux server"
}

variable "linux_netmask" {
  type        = string
  description = "Subnet Mask of Linux server"
}

variable "linux_gateway" {
  type        = string
  description = "Gateway for Linux server"
}

variable "linux_dns1" {
  type        = string
  description = "DNS Server 1 for Linux server"
}

variable "linux_dns2" {
  type        = string
  description = "DNS Server 2 for Linux server"
}

variable "packer_http_directory" {
  type        = string
  description = "Packer HTTP Directory"
}

variable "packer_http_ip" {
  type        = string
  description = "Packer HTTP IP"
}

variable "packer_http_port" {
  type        = number
  description = "Packer HTTP Port"
}
