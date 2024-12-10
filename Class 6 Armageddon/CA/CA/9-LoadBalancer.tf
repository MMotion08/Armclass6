#####################CALIFORNIA#####################
resource "aws_lb" "california_alb" {
  name               = "california-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.california-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-us-west-1b.id,
    aws_subnet.public-us-east-1c.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "californiaLoadBalancer"
    Service = "california"
    Owner   = "Hughes"
    Project = "Web Service"
  }
}

resource "california_aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.california_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.california_tg.arn
  }
}


output "california_lb_dns_name" {
  value       = aws_lb.california_alb.dns_name
  description = "The DNS name of the california Load Balancer."
}