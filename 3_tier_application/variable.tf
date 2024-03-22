#AWS region
variable "region_name" {
    type = string
    default = "us-east-1"
  
}

#AMI linux2
variable "ami" {
    type = string
    default = "ami-00b8917ae86a424c9"
  
}

#Instant type
variable "instance_type" {
    type = string
    default = "t2.micro"
  
}

#Keypair
variable "key_name" {
    type = string
    default = "newkeypair"

  
}

######### VPC Cidr #########
# Defining CIDR Block for VPC
variable "vpc_cidr" {
  default = "172.20.0.0/20"
}




######### Subnets Cidr #########

# Defining CIDR Block for 1st Subnet
variable "subnet1_cidr" {
  default = "172.20.1.0/24"
}
# Defining CIDR Block for 2nd Subnet
variable "subnet2_cidr" {
  default = "172.20.2.0/24"
}
# Defining CIDR Block for 3rd Subnet
variable "subnet3_cidr" {
  default = "172.20.3.0/24"
}
# Defining CIDR Block for 4th Subnet
variable "subnet4_cidr" {
  default = "172.20.4.0/24"
}
# Defining CIDR Block for 5th Subnet
variable "subnet5_cidr" {
  default = "172.20.5.0/24"
}
# Defining CIDR Block for 6th Subnet
variable "subnet6_cidr" {
  default = "172.20.6.0/24"
}
# Defining CIDR Block for 7th Subnet
variable "subnet7_cidr" {
  default = "172.20.7.0/24"
}
# Defining CIDR Block for 8th Subnet
variable "subnet8_cidr" {
  default = "172.20.8.0/24"
}
# Defining CIDR Block for 9th Subnet
variable "subnet9_cidr" {
  default = "172.20.9.0/24"
}