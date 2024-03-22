# Creating VPC
resource "aws_vpc" "three_tier_vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  enable_dns_hostnames = true
  enable_dns_support = true

  tags = {
    Name = "VPC for 3_tier on terraform"
  }
}