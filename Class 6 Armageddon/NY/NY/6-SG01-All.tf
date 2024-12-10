resource "aws_security_group" "new_york-sg01-servers" {
  name        = "new_york-sg01-servers"
  description = "new_york-sg01-servers"
  vpc_id      = aws_vpc.new_york.id

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
    Name    = "new_york-sg01-servers"
    Service = "application1"
    Owner   = "Hughes"
    Planet  = "Terra"
  }

}


resource "aws_security_group" "new_york-sg02-LB01" {
  name        = "new_york-sg02-LB01"
  description = "new_york-sg02-LB01"
  vpc_id      = aws_vpc.new_york.id

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
    Name    = "new_york-sg02-LB01"
    Service = "application1"
    Owner   = "Hughes"
    Planet  = "Terra"
  }

}