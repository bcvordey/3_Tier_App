#### Creating Public Web Route Table #####

resource "aws_route_table" "public_web_rt" {
    vpc_id = aws_vpc.three_tier_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.three_tier_igw.id
    }

    tags = {
        Name = "Public Web Route Table"
    }
}



#### Route Table Association #####

resource "aws_route_table_association" "public-subnet-1-rt" {
  subnet_id      = aws_subnet.public-subnet-1.id
  route_table_id = aws_route_table.public_web_rt.id
}

resource "aws_route_table_association" "public-subnet-2-rt" {
  subnet_id      = aws_subnet.public-subnet-2.id
  route_table_id = aws_route_table.public_web_rt.id
}

resource "aws_route_table_association" "public-subnet-3-rt" {
  subnet_id      = aws_subnet.public-subnet-3.id
  route_table_id = aws_route_table.public_web_rt.id
}


