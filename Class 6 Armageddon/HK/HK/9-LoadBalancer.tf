##########################HONG KONG################################
resource "aws_lb" "hong_kong_alb" {
  name               = "hong-kong-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.hong_kong-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-ap-east-1a.id,
    aws_subnet.public-ap-east-1b.id,
    aws_subnet.public-ap-east-1c.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "hongkongLoadBalancer"
    Service = "hongkong"
    Owner   = "Hughes"
    Project = "Web Service"
  }
}

resource "hong_kong_aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.hong_kong_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.hong_kong_tg.arn
  }
}


output "hong_kong_lb_dns_name" {
  value       = aws_lb.hong_kong_alb.dns_name
  description = "The DNS name of the hong_kong Load Balancer."
}