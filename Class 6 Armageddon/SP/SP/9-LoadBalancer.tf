#####################SAO PAULO#####################
resource "aws_lb" "sao_paulo_alb" {
  name               = "sao-paulo-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.sao_paulo-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-sa-east-1a.id,
    aws_subnet.public-sa-east-1b.id,
    aws_subnet.public-sa-east-1c.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "saopauloLoadBalancer"
    Service = "saopaulo"
    Owner   = "White"
    Project = "Web Service"
  }
}

resource "sao_paulo_aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.sao_paulo_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.sao_paulo_tg.arn
  }
}


output "sao_paulo_lb_dns_name" {
  value       = aws_lb.sao_paulo_alb.dns_name
  description = "The DNS name of the sao_paulo Load Balancer."
}