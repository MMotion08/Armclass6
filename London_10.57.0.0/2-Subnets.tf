#These are   for  public

resource "aws_subnet" "public-eu-west-1a" {
  vpc_id                  = aws_vpc.Armageddon_London.id
  cidr_block              = "10.57.1.0/24"
  availability_zone       = "eu-west-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-eu-west-1a"
    Service = "Setup1"
    Owner   = "Lemons"
    Planet  = "TheKingdom1"
  }
}

resource "aws_subnet" "public-eu-west-1b" {
  vpc_id                  = aws_vpc.Armageddon_London.id
  cidr_block              = "10.57.2.0/24"
  availability_zone       = "eu-west-1b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-eu-west-1b"
    Service = "Setup1"
    Owner   = "Lemons"
    Planet  = "TheKingdom1"
  }
}


resource "aws_subnet" "public-eu-west-1c" {
  vpc_id                  = aws_vpc.Armageddon_London.id
  cidr_block              = "10.57.3.0/24"
  availability_zone       = "eu-west-1c"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-eu-west-1c"
    Service = "Setup1"
    Owner   = "Lemons"
    Planet  = "TheKingdom1"
  }
}

#these are for private
resource "aws_subnet" "private-eu-west-1a" {
  vpc_id            = aws_vpc.Armageddon_London.id
  cidr_block        = "10.57.11.0/24"
  availability_zone = "eu-west-1a"

  tags = {
    Name    = "private-eu-west-1a"
    Service = "Setup1"
    Owner   = "Lemons"
    Planet  = "TheKingdom1"
  }
}

resource "aws_subnet" "private-eu-west-1b" {
  vpc_id            = aws_vpc.Armageddon_London.id
  cidr_block        = "10.57.12.0/24"
  availability_zone = "eu-west-1b"

  tags = {
    Name    = "private-eu-west-1b"
    Service = "Setup1"
    Owner   = "Lemons"
    Planet  = "TheKingdom1"
  }
}


resource "aws_subnet" "private-eu-west-1c" {
  vpc_id            = aws_vpc.Armageddon_London.id
  cidr_block        = "10.57.13.0/24"
  availability_zone = "eu-west-1c"

  tags = {
    Name    = "private-eu-west-1c"
    Service = "Setup1"
    Owner   = "Lemons"
    Planet  = "TheKingdom1"
  }
}
