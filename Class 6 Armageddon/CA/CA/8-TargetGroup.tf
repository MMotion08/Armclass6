##########################CALIFORNIA#########################
resource "aws_lb_target_group" "california_tg" {
  name     = "california-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.california.id
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
    Name    = "californiaTargetGroup"
    Service = "california"
    Owner   = "Hughes"
    Project = "Web Service"
  }
}