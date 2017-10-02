output "vpc_name" {
	value = "${var.vpc_environment["name"]}"
}

output "vpc_id" {
	value = "${aws_vpc.vpc.id}"
}

output "vpc_public_subnet_ids" {
	value = ["${aws_subnet.subnet_public.*.id}"]
}

output "vpc_public_subnet_cdirs" {
	value = ["${aws_subnet.subnet_public.*.cidr_block}"]
}

output "vpc_private_subnet_ids" {
	value = ["${aws_subnet.subnet_private.*.id}"]
}

output "vpc_private_subnet_cdirs" {
	value = ["${aws_subnet.subnet_private.*.cidr_block}"]
}

output "vpc_nat_gateway_eips" {
    value = ["${aws_eip.nat_gateway_eip.*.public_ip}"]
}

output "vpc_nat_gateways" {
  value = ["${aws_nat_gateway.nat_gateway.*.id}"]
}