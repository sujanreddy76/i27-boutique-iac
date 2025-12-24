
variable "project_id" {
    description = "The GCP project ID"
    type = string
  
}
variable "region" {
    description = "The GCP region"
    type = string
  
}
variable "local_vpc_name" {
    description = "Name of the VPC"
    type = string
}
variable "local_subnet_name" {
    description = "Name of the Subnet"
    type = string
}
variable "local_subnet_cidr" {
    description = "CIDR range of the subnet"
    type = string
  
}
variable "local_vm_name" {
    description = "Name of the VM Instance"
    type = string
  
}
variable "local_machine_type" {
    description = "Machine type of the VM instance"
    type = string
  
}
variable "local_vm_zone" {
    description = "Zone where the VM instance will get created"
    type = string
  
}
