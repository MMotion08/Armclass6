#######################AUSTRALIA#####################
resource "aws_security_group" "australia-sg01-servers" {
  name        = "australia-sg01-servers"
  description = "australia-sg01-servers"
  vpc_id      = aws_vpc.australia.id

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
    Name    = "australia-sg01-servers"
    Service = "application1"
    Owner   = "White"
    Planet  = "Terra"
  }

}


resource "aws_security_group" "australia-sg02-LB01" {
  name        = "australia-sg02-LB01"
  description = "australia-sg02-LB01"
  vpc_id      = aws_vpc.australia.id

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
    Name    = "australia-sg02-LB01"
    Service = "application1"
    Owner   = "White"
    Planet  = "Terra"
  }

}