# The vpc

module "my-vpc" {
	source                         = "/Users/thuynguyen/ws/terraform/infrastructure/modules/vpc"
	vpc_environment                = "${var.vpc_environment}"
}

##########################
# outputs from module vpc
##########################

output "region" {
  value = "${var.region}"
}

output "vpc-name" {
  value = "${module.my-vpc.vpc_name}"
}

output "vpc-id" {
  value = "${module.my-vpc.vpc_id}"
}

output "vpc_public_subnet_ids" {
  value = "${module.my-vpc.vpc_public_subnet_ids}"
}

output "vpc_public_subnet_cdirs" {
  value = "${module.my-vpc.vpc_public_subnet_cdirs}"
}

output "vpc_private_subnet_ids" {
  value = "${module.my-vpc.vpc_private_subnet_ids}"
}

output "vpc_private_subnet_cdirs" {
  value = "${module.my-vpc.vpc_private_subnet_cdirs}"
}

output "vpc_nat_gateway_eips" {
    value = "${module.my-vpc.vpc_nat_gateway_eips}"
}

output "vpc_nat_gateways" {
  value = "${module.my-vpc.vpc_nat_gateways}"
}