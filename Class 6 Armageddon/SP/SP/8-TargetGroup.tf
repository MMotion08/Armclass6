##########################SAO PAULO#########################
resource "aws_lb_target_group" "sao_paulo_tg" {
  name     = "sao-paulo-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.sao_paulo.id
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
    Name    = "saopauloTargetGroup"
    Service = "saopaulo"
    Owner   = "White"
    Project = "Web Service"
  }
}