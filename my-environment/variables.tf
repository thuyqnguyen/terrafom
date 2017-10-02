# define some variables

variable "region" {
  description = "The AWS region."
}

variable "vpc_environment" {
  type        = "map"
  description = "About the environment: VPC."
}

variable "redshift" {
  type        = "map"
  description = "About the redshift."
}

variable "bucket" {
  type        = "map"
  description = "The test bucket."
}
