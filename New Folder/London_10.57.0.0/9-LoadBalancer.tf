
resource "aws_lb" "Armageddon-London_alb" {
  name               = "Armageddon-London-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.Armageddon_London-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-eu-west-1a.id,
    aws_subnet.public-eu-west-1b.id,
    aws_subnet.public-eu-west-1c.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "Armageddon-LondonLoadBalancer"
    Service = "Armageddon-London"
    Owner   = "User"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.Armageddon-London_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.Armageddon_London_tg.arn
  }

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.Armageddon_London_tg.arn
  }
}
