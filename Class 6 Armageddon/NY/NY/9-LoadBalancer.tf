resource "aws_lb" "new_york_alb" {
  name               = "new-york-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.new_york-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-us-east-1a.id,
    aws_subnet.public-us-east-1b.id,
    aws_subnet.public-us-east-1c.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "newyorkLoadBalancer"
    Service = "newyork"
    Owner   = "Hughes"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.new_york_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.new_york_tg.arn
  }
}


output "lb_dns_name" {
  value       = aws_lb.new_york_alb.dns_name
  description = "The DNS name of the new_york Load Balancer."
}