# define some locals

locals {
  nat_gateway_count = "${var.vpc_environment["multi_az"]? length(data.aws_availability_zones.available.names) : 1}"
}
