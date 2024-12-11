resource "aws_security_group" "Armageddon_London-sg01-servers" {
  name        = "Armageddon_London-sg01-servers"
  description = "Armageddon_London-sg01-servers"
  vpc_id      = aws_vpc.Armageddon_London.id

  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["10.57.0.0/16"]
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.57.0.0/16"]
  }

  ingress {
    description = "MyEvilBox"
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["10.57.0.0/16"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.57.0.0/16"]
  }

  tags = {
    Name    = "Armageddon_London-sg01-servers"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }

}





resource "aws_security_group" "Armageddon_London-sg02-LB01" {
  name        = "Armageddon_London-sg02-LB01"
  description = "Armageddon_London-sg02-LB01"
  vpc_id      = aws_vpc.Armageddon_London.id

  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["10.57.0.0/16"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.57.0.0/16"]
  }

  tags = {
    Name    = "Armageddon_London-sg02-LB01"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }

}
