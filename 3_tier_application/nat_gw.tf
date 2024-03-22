##### NAT GATEWAY #####

resource "aws_nat_gateway" "three_tier_nat_gw1" {
  allocation_id = aws_eip.eip1.id #elastic ip
  subnet_id     = aws_subnet.public-subnet-1.id

  tags = {
    Name = "gw NAT1"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.three_tier_igw]
}

# resource "aws_nat_gateway" "three_tier_nat_gw2" {
#   allocation_id = aws_eip.eip1.id #elastic ip
#   subnet_id     = aws_subnet.public-subnet-2.id

#   tags = {
#     Name = "gw NAT2"
#   }

#   # To ensure proper ordering, it is recommended to add an explicit dependency
#   # on the Internet Gateway for the VPC.
#   depends_on = [aws_internet_gateway.three_tier_igw]
# }

# resource "aws_nat_gateway" "three_tier_nat_gw3" {
#   allocation_id = aws_eip.eip1.id #elastic ip
#   subnet_id     = aws_subnet.public-subnet-3.id

#   tags = {
#     Name = "gw NAT3"
#   }

#   # To ensure proper ordering, it is recommended to add an explicit dependency
#   # on the Internet Gateway for the VPC.
#   depends_on = [aws_internet_gateway.three_tier_igw]
# }