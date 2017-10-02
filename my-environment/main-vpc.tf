# The vpc
module "my-vpc" {
	source                         = "/Users/thuynguyen/ws/terraform/infrastructure/modules/vpc"
	vpc_environment                = "${var.vpc_environment}"
}
