# the main driver to create this environment:


# The vpc to house our redshift database
module "my-vpc" {
	source                         = "/Users/thuynguyen/ws/terraform/infrastructure/modules/vpc"
	vpc_environment                = "${var.vpc_environment}"
}
