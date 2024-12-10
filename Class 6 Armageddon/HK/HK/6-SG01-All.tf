######################HONG KONG#####################
resource "aws_security_group" "hong_kong-sg01-servers" {
  name        = "hong_kong-sg01-servers"
  description = "hong_kong-sg01-servers"
  vpc_id      = aws_vpc.hong_kong.id

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
    Name    = "hong_kong-sg01-servers"
    Service = "application1"
    Owner   = "Hughes"
    Planet  = "Terra"
  }

}


resource "aws_security_group" "hong_kong-sg02-LB01" {
  name        = "hong_kong-sg02-LB01"
  description = "hong_kong-sg02-LB01"
  vpc_id      = aws_vpc.hong_kong.id

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
    Name    = "hong_kong-sg02-LB01"
    Service = "application1"
    Owner   = "Hughes"
    Planet  = "Terra"
  }

}