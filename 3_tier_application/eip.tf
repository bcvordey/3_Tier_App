resource "aws_eip" "eip1" {

    depends_on = [ aws_internet_gateway.three_tier_igw]
  
}