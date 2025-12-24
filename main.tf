provider "google" {
    project = var.project_id
    region = var.region
}

# Calling a VPC module
module "vpc" {
    source = "../modules/vpc"
    vpc_name = var.local_vpc_name
}
#Calling a subnet module
module "subnet" {
    source = "../modules/subnet"
    subnet_name = var.local_subnet_name
    subnet_cidr = var.local_subnet_cidr
    region = var.region
    vpc_id = module.vpc.vpc_id
    depends_on = [ module.vpc ]
}
#Calling GCE Module
module "gce" {
    source = "../modules/gce"
    vm_name = var.local_vm_name
     machine_type = var.local_machine_type
    zone = var.local_vm_zone
    subnet_id = module.subnet.subnet_id
   
  
}
