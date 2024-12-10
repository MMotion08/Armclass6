#################################Australia################################
resource "aws_lb" "australia_alb" {
  name               = "australia-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.australia-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-ap-southeast-2a.id,
    aws_subnet.public-ap-southeast-2b.id,
    aws_subnet.public-ap-southeast-2c.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "australiaLoadBalancer"
    Service = "australia"
    Owner   = "User"
    Project = "Web Service"
  }
}

resource "australia_aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.australia_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.australia_tg.arn
  }
}


output "australia_lb_dns_name" {
  value       = aws_lb.australia_alb.dns_name
  description = "The DNS name of the australia Load Balancer."
}