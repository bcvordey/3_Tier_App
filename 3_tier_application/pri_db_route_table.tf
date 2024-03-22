resource "aws_route_table" "private_db_rt" {
    vpc_id = aws_vpc.three_tier_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.three_tier_nat_gw1.id
    }

    tags = {
        Name = "private db route table"
    }
}



#### Route Table Association #####

resource "aws_route_table_association" "db-subnet-1-rt" {
  subnet_id      = aws_subnet.db-subnet-1.id
  route_table_id = aws_route_table.private_db_rt.id
}

resource "aws_route_table_association" "db-subnet-2-rt" {
  subnet_id      = aws_subnet.db-subnet-2.id
  route_table_id = aws_route_table.private_db_rt.id
}

resource "aws_route_table_association" "db-subnet-3-rt" {
  subnet_id      = aws_subnet.db-subnet-3.id
  route_table_id = aws_route_table.private_db_rt.id
}


