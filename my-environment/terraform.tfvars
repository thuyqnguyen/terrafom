region = "us-west-2"

vpc_environment {
	name                = "thuy-vpc"
	cdir                = "10.102.0.0/16"
    multi_az            = false
}

redshift {
    name                = "thuy-redshift-cluster"
    dbname              = "testdb"
    username            = "foo"
    password            = "BarBar01"
    port                = 5439
    node_type           = "dc1.large"
    number_of_nodes     = 0
}

bucket {
    name                = "thuy-my-the-redshift-bucket"
    region              = "us-west-2"
}

rds {
    identifier           = "thuyrdstest"
    name                 = "thuyDB"
    username             = "foo"
    password             = "BarBar01"
    port                 = 3306
    allocated_storage    = 10
    storage_type         = "gp2"
    engine               = "mysql"
    engine_version       = "5.7.17"
    instance_class       = "db.t2.micro"
    param_group_name     = "default.mysql5.7"
}