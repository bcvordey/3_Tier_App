resource "aws_route_table" "private_app_rt" {
    vpc_id = aws_vpc.three_tier_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.three_tier_nat_gw1.id
    }

    tags = {
        Name = "Private app route table"
    }
}



#### Route Table Association #####

resource "aws_route_table_association" "app-subnet-1-rt" {
  subnet_id      = aws_subnet.app-subnet-1.id
  route_table_id = aws_route_table.private_app_rt.id
}

resource "aws_route_table_association" "app-subnet-2-rt" {
  subnet_id      = aws_subnet.app-subnet-2.id
  route_table_id = aws_route_table.private_app_rt.id
}

resource "aws_route_table_association" "app-subnet-3-rt" {
  subnet_id      = aws_subnet.app-subnet-3.id
  route_table_id = aws_route_table.private_app_rt.id
}


