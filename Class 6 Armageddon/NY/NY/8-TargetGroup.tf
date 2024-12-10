resource "aws_lb_target_group" "new_york_tg" {
  name     = "new-york-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.new_york.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "newyorkTargetGroup"
    Service = "newyork"
    Owner   = "Hughes"
    Project = "Web Service"
  }
}