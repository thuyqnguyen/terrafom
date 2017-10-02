This module provision a vpc with all the subnets, route tables, an attached internet gateway.
We will use data source to query the region for all availability zones, then dynamically build a public subnet, a private sub net for each zone.
We break apart the vpc cidr then assign the sub-cidr to each subnet. 