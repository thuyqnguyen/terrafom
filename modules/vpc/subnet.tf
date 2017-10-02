#
# PUBLIC SUBNETS
#

resource "aws_subnet" "subnet_public" {
  vpc_id            = "${aws_vpc.vpc.id}" 
  cidr_block        = "${cidrsubnet(var.vpc_environment["cdir"], 8, count.index)}"
  availability_zone = "${data.aws_availability_zones.available.names[count.index]}"
	tags {
      Name          = "${var.vpc_environment["name"]}-public-${data.aws_availability_zones.available.names[count.index]}"
    }
  count             = "${length(data.aws_availability_zones.available.names)}"
}

#
# PRIVATE SUBNETS
#

resource "aws_subnet" "subnet_private" {
  vpc_id            = "${aws_vpc.vpc.id}" 
  cidr_block        = "${cidrsubnet(var.vpc_environment["cdir"], 8, "${length(data.aws_availability_zones.available.names)}" + count.index)}" 
  availability_zone = "${data.aws_availability_zones.available.names[count.index]}"
	tags {
        Name        = "${var.vpc_environment["name"]}-private-${data.aws_availability_zones.available.names[count.index]}"
    }
  count             = "${length(data.aws_availability_zones.available.names)}"
}