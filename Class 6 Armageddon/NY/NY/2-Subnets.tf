resource "aws_subnet" "public-us-east-1a" {
  vpc_id                  = aws_vpc.new_york.id
  cidr_block              = "10.54.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-east-1a"
    Service = "application1"
    Owner   = "Hughes"
    Planet  = "Terra"
  }
}


resource "aws_subnet" "public-us-east-1b" {
  vpc_id                  = aws_vpc.new_york.id
  cidr_block              = "10.54.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-east-1b"
    Service = "application1"
    Owner   = "Hughes"
    Planet  = "Terra"
  }
}
resource "aws_subnet" "public-us-east-1c" {
  vpc_id                  = aws_vpc.new_york.id
  cidr_block              = "10.54.3.0/24"
  availability_zone       = "us-east-1c"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-east-1c"
    Service = "application1"
    Owner   = "Hughes"
    Planet  = "Terra"
  }
}

#these are for private
resource "aws_subnet" "private-us-east-1a" {
  vpc_id            = aws_vpc.new_york.id
  cidr_block        = "10.54.11.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name    = "private-us-east-1b"
    Service = "application1"
    Owner   = "Hughes"
    Planet  = "Terra"
  }
}


resource "aws_subnet" "private-us-east-1b" {
  vpc_id            = aws_vpc.new_york.id
  cidr_block        = "10.54.12.0/24"
  availability_zone = "us-east-1c"

  tags = {
    Name    = "private-us-east-1c"
    Service = "application1"
    Owner   = "Hughes"
    Planet  = "Terra"
  }

}
resource "aws_subnet" "private-us-east-1c" {
  vpc_id            = aws_vpc.new_york.id
  cidr_block        = "10.54.13.0/24"
  availability_zone = "us-east-1c"

  tags = {
    Name    = "private-us-east-1c"
    Service = "application1"
    Owner   = "Hughes"
    Planet  = "Terra"
  }

}