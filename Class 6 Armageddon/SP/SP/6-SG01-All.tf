#######################SAO PAULO#####################
resource "aws_security_group" "sao_paulo-sg01-servers" {
  name        = "sao_paulo-sg01-servers"
  description = "sao_paulo-sg01-servers"
  vpc_id      = aws_vpc.sao_paulo.id

  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }



  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "sao_paulo-sg01-servers"
    Service = "application1"
    Owner   = "White"
    Planet  = "Terra"
  }

}


resource "aws_security_group" "sao_paulo-sg02-LB01" {
  name        = "sao_paulo-sg02-LB01"
  description = "sao_paulo-sg02-LB01"
  vpc_id      = aws_vpc.sao_paulo.id

  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "sao_paulo-sg02-LB01"
    Service = "application1"
    Owner   = "White"
    Planet  = "Terra"
  }

}