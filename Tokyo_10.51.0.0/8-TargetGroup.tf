
resource "aws_lb_target_group" "Armageddon_Tokyo_tg" {
  name     = "Armageddon_Tokyo-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.Armageddon_Tokyo.id
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
    Name    = "Armageddon_TokyoTargetGroup"
    Service = "Armageddon_Tokyo"
    Owner   = "User"
    Project = "Web Service"
  }
}
