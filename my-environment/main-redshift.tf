# The redshift with info passed on the from modules vpc, s3.

module "my-redshift" {
	source                         = "../modules/redshift"
	redshift                       = "${var.redshift}"
	redshift-subnet-ids            = "${module.my-vpc.vpc_private_subnet_ids}"
	redshift-role-arns             = ["${module.my-s3.s3-bucket-role-arn}"]
}

################################
# outputs from module redshift
################################

output "my-redshift-identifier" {
  value = "${module.my-redshift.redshift-identifier}"
}

output "my-redshift-endpoint" {
   value = "${module.my-redshift.redshift-endpoint}"
}

output "redshift-database-name" {
	value = "${module.my-redshift.redshift-database-name}"
}
