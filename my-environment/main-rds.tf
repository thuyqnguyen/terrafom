# The rds with info passed on the from modules vpc.

module "my-rds" {
	source                         = "../modules/rds"
	rds                            = "${var.rds}"
	rds_vpc_id                     = "${module.my-vpc.vpc_id}"
	rds_subnet_ids                 = "${module.my-vpc.vpc_private_subnet_ids}"
}

################################
# outputs from module rds
################################

output "my-rds-id" {
  value = "${module.my-rds.rds-id}"
}

output "my-rds-endpoint" {
   value = "${module.my-rds.rds-endpoint}"
}

output "rds-name" {
	value = "${module.my-rds.rds-name}"
}
