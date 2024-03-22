# # Create ALB
# resource "aws_lb" "alb" {
#     name               = "alb"
#     internal           = false
#     load_balancer_type = "application"
#     security_groups    = [aws_security_group.web-sg.id]
#     subnets            = [aws_subnet.public-subnet-1.id]
# }