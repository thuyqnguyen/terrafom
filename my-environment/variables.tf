# define some variables

variable "region" {
  description = "The AWS region."
}

variable "vpc_environment" {
  type        = "map"
  description = "About the environment: VPC."
}

variable "rds" {
  type        = "map"
  description = "About the rds."
}

variable "redshift" {
  type        = "map"
  description = "About the redshift."
}

variable "bucket" {
  type        = "map"
  description = "The test bucket."
}
