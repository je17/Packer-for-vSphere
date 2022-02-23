![GitHub](https://img.shields.io/github/license/d3athkai/MOTD-Login-Banner-for-Linux?style=plastic) ![GitHub](https://img.shields.io/badge/Packer-1.7.10+-green?style=plastic)

# Packer for vSphere

## Usage  
  
### Rocky Linux  
  
1. Upload ***Rocky Linux iso*** and note down the hash of the iso
2. Fill up the variable values in ***rockylinux85.pkrvars.hcl***  
3. Create both directories: ***http*** and ***logs***  
4.  In ***http*** directories, upload your ***anaconda-ks.cfg*** and rename it as ***ks.cfg***  
5.  Execute the Packer build:  
     `./packer-build.bash`  
Alternately, you can manually run the packer command:  
    `packer init -var-file=rockylinux.pkrvars.hcl .`  
    `packer validate -var-file=rockylinux.pkrvars.hcl .`  
    `packer fmt -var-file=rockylinux.pkrvars.hcl .`  
    `packer build -var-file=rockylinux.pkrvars.hcl .`  
  
### Ubuntu  
  
1. Upload ***Ubuntu iso*** and note down the hash of the iso
2. Fill up the variable values in ***ubuntu2004.pkrvars.hcl***  
3. Create both directories: ***http*** and ***logs***  
4. In ***http*** directories, create an empty file called ***meta-data***  
5.  In ***http*** directories, upload your ***autoinstall-user-data*** and rename it as ***user-data***  
6.  Execute the Packer build:  
     `./packer-build.bash`  
Alternately, you can manually run the packer command:  
    `packer init -var-file=ubuntu.pkrvars.hcl .`  
    `packer validate -var-file=ubuntu.pkrvars.hcl .`  
    `packer fmt -var-file=ubuntu.pkrvars.hcl .`  
    `packer build -var-file=ubuntu.pkrvars.hcl .`  
  
## Variables  
Example of variable values in ***ubuntu2004.pkrvars.hcl***:
| Name  | Description  | Example value  |
| ------------- | ------------- | ------------- |
| vcenter_url  | URL of vCenter Server  | "https://vcenter.example.com"  |
| vcenter_datacenter  | vCenter datacenter name  | "Datacenter"  |
| vcenter_username  | vCenter Username  | "administrator@vsphere.local"  |
| vcenter_password  | vCenter Password  | "password"  |
| esxi_host  | ESXi host  | "esxi-host"  |
| esxi_vm_datastore  | ESXi datastore to store VM  | "vm-datastore"  |
| esxi_vm_folder  | Folder in ESXi datastore to store VM  | "vm"  |
| esxi_iso_datastore  | ESXi datastore to store ISO  | "iso-datastore"  |
| esxi_iso_folder  | Folder in ESXi datastore to store ISO  | "iso"  |
| vm_virtual_hardware_version  | Virtual Hardware Version: https://kb.vmware.com/s/article/1003746  | 19  |
| vm_guest_os_identifier  | Guest OS Identifier: https://code.vmware.com/apis/358/vsphere/doc/vim.vm.GuestOsDescriptor.GuestOsIdentifier.html  | "ubuntu64Guest"  |
| vm_disk_size  | Disk size of VM image  | 2048  |
| vm_firmware  | Firmware of VM image  | "efi-secure"  |
| linux_distro  | Linux distribution  | "Ubuntu"  |
| linux_version  | Linux server version, including minor version  | "20.04.3"  |
| linux_iso_name  | Name of Linux server ISO  | "ubuntu-20.04.3-live-server-amd64.iso"  |
| linux_iso_checksum  | SHA256 Checksum for the Linux server ISO  | "f8e3086f3cea0fb3fefb29937ab5ed9d19e767079633960ccb50e76153effc98"  |
| linux_ssh_username  | SSH username to access Linux server  | "user1"  |
| linux_ssh_password  | SSH password to access Linux server  | "password"  |
| linux_ip  | IP Address of Linux server  | "192.168.0.10"  |
| linux_netmask  | Subnet Mask of Linux server  | "255.255.255.0"  |
| linux_gateway  | Gateway for Linux server  | "192.168.0.254"  |
| linux_dns1  | DNS Server 1 for Linux server  | "192.168.0.1"  |
| linux_dns2  | DNS Server 2 for Linux server  | "192.168.0.2"  |
| packer_http_directory  | Packer HTTP Directory  | "http/"  |
| packer_http_ip  | Packer HTTP IP  | "192.168.0.100"  |
| packer_http_port  | Packer HTTP Port  | 80  |
