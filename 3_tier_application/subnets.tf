# Creating 1st web subnet 
resource "aws_subnet" "public-subnet-1" {
  vpc_id                  = aws_vpc.three_tier_vpc.id
  cidr_block              = var.subnet1_cidr
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"

  tags = {
    Name = "Web Subnet 1"
  }
}

# Creating 2nd web subnet 
resource "aws_subnet" "public-subnet-2" {
  vpc_id                  = aws_vpc.three_tier_vpc.id
  cidr_block              = var.subnet2_cidr
  map_public_ip_on_launch = true
  availability_zone = "us-east-1b"

  tags = {
    Name = "Web Subnet 2"
  }
}

# Creating 3rd web subnet 
resource "aws_subnet" "public-subnet-3" {
  vpc_id                  = aws_vpc.three_tier_vpc.id
  cidr_block              = var.subnet3_cidr
  map_public_ip_on_launch = true
  availability_zone = "us-east-1c"

  tags = {
    Name = "Web Subnet 3"
  }
}



# Creating 1st application subnet 
resource "aws_subnet" "app-subnet-1" {
  vpc_id                  = aws_vpc.three_tier_vpc.id
  cidr_block             = var.subnet4_cidr
  map_public_ip_on_launch = false
  availability_zone = "us-east-1a"

  tags = {
    Name = "App Subnet 1"
  }
}

# Creating 2nd application subnet 
resource "aws_subnet" "app-subnet-2" {
  vpc_id                  = aws_vpc.three_tier_vpc.id
  cidr_block             = var.subnet5_cidr
  map_public_ip_on_launch = false
  availability_zone = "us-east-1b"

  tags = {
    Name = "App Subnet 2"
  }
}

# Creating 3rd application subnet 
resource "aws_subnet" "app-subnet-3" {
  vpc_id                  = aws_vpc.three_tier_vpc.id
  cidr_block             = var.subnet6_cidr
  map_public_ip_on_launch = false
  availability_zone = "us-east-1c"

  tags = {
    Name = "App Subnet 3"
  }
}

# Create Database Private Subnet 1
resource "aws_subnet" "db-subnet-1" {
  vpc_id            = aws_vpc.three_tier_vpc.id
  cidr_block        = var.subnet7_cidr
  availability_zone = "us-east-1a"

  tags = {
    Name = "Db Subnet 1"
  }
}

# Create Database Private Subnet 2
resource "aws_subnet" "db-subnet-2" {
  vpc_id            = aws_vpc.three_tier_vpc.id
  cidr_block        = var.subnet8_cidr
  availability_zone = "us-east-1b"

  tags = {
    Name = "Db Subnet 2"
  }
}

# Create Database Private Subnet 3
resource "aws_subnet" "db-subnet-3" {
  vpc_id            = aws_vpc.three_tier_vpc.id
  cidr_block        = var.subnet9_cidr
  availability_zone = "us-east-1c"

  tags = {
    Name = "Db Subnet 3"
  }
}