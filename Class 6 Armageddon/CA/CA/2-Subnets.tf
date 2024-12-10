#######################CALIFORNIA ########################################

resource "aws_subnet" "public-us-west-1b" {
  vpc_id                  = aws_vpc.california.id
  cidr_block              = "10.55.2.0/24"
  availability_zone       = "us-west-1b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-west-1b"
    Service = "application1"
    Owner   = "Hughes"
    Planet  = "Terra"
  }
}
resource "aws_subnet" "public-us-west-1c" {
  vpc_id                  = aws_vpc.california.id
  cidr_block              = "10.55.3.0/24"
  availability_zone       = "us-west-1c"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-west-1c"
    Service = "application1"
    Owner   = "Huhges"
    Planet  = "Terra"
  }
}

#these are for private
resource "aws_subnet" "private-us-west-1b" {
  vpc_id            = aws_vpc.california.id
  cidr_block        = "10.55.12.0/24"
  availability_zone = "us-west-1b"

  tags = {
    Name    = "private-us-west-1b"
    Service = "application1"
    Owner   = "Hughes"
    Planet  = "Terra"
  }
}


resource "aws_subnet" "private-us-west-1c" {
  vpc_id            = aws_vpc.california.id
  cidr_block        = "10.55.13.0/24"
  availability_zone = "us-west-1c"

  tags = {
    Name    = "private-us-west-1c"
    Service = "application1"
    Owner   = "Hughes"
    Planet  = "Terra"
  }

}
