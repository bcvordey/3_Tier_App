# ###################################
# ## SG for private Tier         ###
# ###################################
# resource "aws_security_group" "sg-private" {
#   name        = "app server sg"
#   description = "Enable http/https access on port 80/443 via ALB and ssh via ssh sg"
#   vpc_id      = aws_vpc.three_tier_vpc.id

#   ingress {
#     description = "http access"
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     #security_groups = ["${aws_security_group.alb-security-group.id}"]
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     description = "https access"
#     from_port   = 443
#     to_port     = 443
#     protocol    = "tcp"
#     #security_groups = ["${aws_security_group.alb-security-group.id}"]
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#   ingress {
#     description = "ssh access"
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     #security_groups = ["${aws_security_group.ssh-security-group.id}"]
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   tags = {
#     Name = "Private sg"
#   }
# }