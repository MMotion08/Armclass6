########################Australia######################
resource "aws_lb_target_group" "australia_tg" {
  name     = "australia-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.australia.id
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
    Name    = "australiaTargetGroup"
    Service = "australia"
    Owner   = "White"
    Project = "Web Service"
  }
}