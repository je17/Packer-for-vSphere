/*
    VM template using Packer for VMware vSphere.
    https://www.packer.io/plugins/builders/vsphere/vsphere-iso
*/

packer {
  required_version = ">= 1.7.10"
  required_plugins {
    vsphere = {
      version = ">= v1.0.3"
      source  = "github.com/hashicorp/vsphere"
    }
  }
}
