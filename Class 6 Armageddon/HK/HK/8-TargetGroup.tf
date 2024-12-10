##################################HONG KONG################################

resource "aws_lb_target_group" "hong_kong_tg" {
  name     = "hong-kong-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.hong_kong.id
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
    Name    = "hongkongTargetGroup"
    Service = "hongkong"
    Owner   = "Hughes"
    Project = "Web Service"
  }
}