# define some variables

variable "rds" {
  type        = "map"
  description = "About the rds."
}

variable "rds_vpc_id" {
  description = "The vpc which RDS resides."
}

variable "rds_subnet_ids" {
  type        = "list"
  description = "The rds security subnet ids."
}
