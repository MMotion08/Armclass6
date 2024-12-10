#######################CALIFORNIA#####################
resource "aws_security_group" "california-sg01-servers" {
  name        = "california-sg01-servers"
  description = "california-sg01-servers"
  vpc_id      = aws_vpc.california.id

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
    Name    = "california-sg01-servers"
    Service = "application1"
    Owner   = "Hughes"
    Planet  = "Terra"
  }

}


resource "aws_security_group" "california-sg02-LB01" {
  name        = "california-sg02-LB01"
  description = "california-sg02-LB01"
  vpc_id      = aws_vpc.california.id

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
    Name    = "california-sg02-LB01"
    Service = "application1"
    Owner   = "Hughes"
    Planet  = "Terra"
  }

}