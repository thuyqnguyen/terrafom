# define some variables

variable "redshift" {
  type        = "map"
  description = "About the redshift."
}

variable "redshift-security-subnet-ids" {
  type        = "list"
  description = "The redshift security subnet ids."
}

variable "redshift-role-arns" {
  type        = "list"
  description = "The redshift roles."
}
