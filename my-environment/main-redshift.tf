# The redshift with info passed on the from modules vpc, s3.

module "my-redshift" {
	source                         = "../modules/redshift"
	redshift                       = "${var.redshift}"
	redshift-security-subnet-ids   = "${module.my-vpc.vpc_private_subnet_ids}"
	redshift-role-arns             = ["${module.my-s3.s3-bucket-role-arn}"]
}
