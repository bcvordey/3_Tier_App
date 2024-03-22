###### PUBLIC FACING JUMP SERVER EC2 #######

# Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "bastian1" {
  ami                         = var.ami
  instance_type               = var.instance_type
  #count                       = 1
  key_name                    = var.key_name
  vpc_security_group_ids      = [aws_security_group.web-sg.id]
  subnet_id                   = aws_subnet.public-subnet-1.id
  associate_public_ip_address = true
  availability_zone           = "us-east-1a"

  tags = {
    Name = "My Public Instance 1"
  }
}

# Creating 2nd EC2 instance in Public Subnet
resource "aws_instance" "bastian2" {
  ami                         = var.ami
  instance_type               = var.instance_type
  #count                       = 1
  key_name                    = var.key_name
  vpc_security_group_ids      = [aws_security_group.web-sg.id]
  subnet_id                   = aws_subnet.public-subnet-2.id
  associate_public_ip_address = true
  availability_zone           = "us-east-1b"

  tags = {
    Name = "My Public Instance 2"
  }
}

# Creating 3nd EC2 instance in Public Subnet
resource "aws_instance" "bastian3" {
  ami                         = var.ami
  instance_type               = var.instance_type
  #count                       = 1
  key_name                    = var.key_name
  vpc_security_group_ids      = [aws_security_group.web-sg.id]
  subnet_id                   = aws_subnet.public-subnet-3.id
  associate_public_ip_address = true
  availability_zone           = "us-east-1c"

  tags = {
    Name = "My Public Instance 3"
  }
}


# # #######  APPLICATION SERVER EC2 ####

# # Creating 1st App EC2 instance in Private Subnet

# resource "aws_instance" "app_server1" {
#   ami                         = var.ami
#   instance_type               = var.instance_type
#   count                       = 1
#   key_name                    = var.key_name
#   vpc_security_group_ids      = ["${aws_security_group.three_tier_sg_private.id}"]
#   subnet_id                   = "${aws_subnet.app-subnet-1.id}"  
#   associate_public_ip_address = false
#   availability_zone           = "us-east-1a"
#   user_data                   = "${file("user_data.sh")}"

#   tags = {
#     Name = "My App Instance 1"
#   }
# }

# # Creating 2nd App EC2 instance in Private Subnet

# resource "aws_instance" "app_server2" {
#   ami                         = var.ami
#   instance_type               = var.instance_type
#   count                       = 1
#   key_name                    = var.key_name
#   vpc_security_group_ids      = ["${aws_security_group.three_tier_sg_private.id}"]
#   subnet_id                   = "${aws_subnet.app-subnet-2.id}" 
#   associate_public_ip_address = false
#   availability_zone           = "us-east-1b"
#   user_data                   = "${file("user_data.sh")}"

#   tags = {
#     Name = "My App Instance 2"
#   }
# }

# # Creating 3nd App EC2 instance in Private Subnet

# resource "aws_instance" "app_server3" {
#   ami                         = var.ami
#   instance_type               = var.instance_type
#   count                       = 1
#   key_name                    = var.key_name
#   vpc_security_group_ids      = ["${aws_security_group.three_tier_sg_private.id}"]
#   subnet_id                   = "${aws_subnet.app-subnet-3.id}" #change this part
#   associate_public_ip_address = false
#   availability_zone           = "us-east-1c"
#   user_data                   = "${file("user_data.sh")}"

#   tags = {
#     Name = "My App Instance 3"
#   }
# }

# #######  DATABASE SERVER EC2 ####


# # Creating 1st Db EC2 instance in Private Subnet
# resource "aws_instance" "db_server1" {
#   ami                         = var.ami
#   instance_type               = var.instance_type
#   count                       = 1
#   key_name                    = var.key_name
#   vpc_security_group_ids      = ["${aws_security_group.three_tier_sg_private.id}"]
#   subnet_id                   = "${aws_subnet.db-subnet-1.id}"  
#   associate_public_ip_address = false
#   availability_zone           = "us-east-1a"
  

#   tags = {
#     Name = "My db Instance 1"
#   }
# }

# # Creating 2nd App EC2 instance in Private Subnet

# resource "aws_instance" "db_server2" {
#   ami                         = var.ami
#   instance_type               = var.instance_type
#   count                       = 1
#   key_name                    = var.key_name
#   vpc_security_group_ids      = ["${aws_security_group.three_tier_sg_private.id}"]
#   subnet_id                   = "${aws_subnet.db-subnet-2.id}" 
#   associate_public_ip_address = false
#   availability_zone           = "us-east-1b"

#   tags = {
#     Name = "My db Instance 2"
#   }
# }

# # Creating 3nd db EC2 instance in Private Subnet

# resource "aws_instance" "db_server3" {
#   ami                         = var.ami
#   instance_type               = var.instance_type
#   count                       = 1
#   key_name                    = var.key_name
#   vpc_security_group_ids      = ["${aws_security_group.three_tier_sg_private.id}"]
#   subnet_id                   = "${aws_subnet.db-subnet-3.id}" 
#   availability_zone           = "us-east-1c"
#   tags = {
#     Name = "My db Instance 3"
#   }
# }

