############################Austrailia ###############
#These are   for  public

resource "aws_subnet" "public-ap-southeast-2a" {
  vpc_id                  = aws_vpc.australia.id
  cidr_block              = "10.53.1.0/24"
  availability_zone       = "ap-southeast-2a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-southeast-2a"
    Service = "application1"
    Owner   = "White"
    Planet  = "Terra"
  }
}


resource "aws_subnet" "public-ap-southeast-2b" {
  vpc_id                  = aws_vpc.australia.id
  cidr_block              = "10.53.2.0/24"
  availability_zone       = "ap-southeast-2b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-southeast-2b"
    Service = "application1"
    Owner   = "White"
    Planet  = "Terra"
  }
}
resource "aws_subnet" "public-ap-southeast-2c" {
  vpc_id                  = aws_vpc.australia.id
  cidr_block              = "10.53.3.0/24"
  availability_zone       = "ap-southeast-2c"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-southeast-2c"
    Service = "application1"
    Owner   = "White"
    Planet  = "Terra"
  }
}

#these are for private
resource "aws_subnet" "private-ap-southeast-2a" {
  vpc_id            = aws_vpc.australia.id
  cidr_block        = "10.53.11.0/24"
  availability_zone = "ap-southeast-2a"

  tags = {
    Name    = "private-ap-southeast-2a"
    Service = "application1"
    Owner   = "White"
    Planet  = "Terra"
  }
}


resource "aws_subnet" "private-ap-southeast-2b" {
  vpc_id            = aws_vpc.australia.id
  cidr_block        = "10.53.12.0/24"
  availability_zone = "ap-southeast-2b"

  tags = {
    Name    = "private-ap-southeast-2c"
    Service = "application1"
    Owner   = "White"
    Planet  = "Terra"
  }

}
resource "aws_subnet" "private-ap-southeast-2c" {
  vpc_id            = aws_vpc.australia.id
  cidr_block        = "10.53.13.0/24"
  availability_zone = "ap-southeast-2c"

  tags = {
    Name    = "private-ap-southeast-2c"
    Service = "application1"
    Owner   = "White"
    Planet  = "Terra"
  }

}