#These are   for  public

resource "aws_subnet" "public-ap-northeast-1a" {
  vpc_id                  = aws_vpc.Armageddon_Tokyo.id
  cidr_block              = "10.51.1.0/24"
  availability_zone       = "ap-northeast-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-northeast-1a"
    Service = "Setup1"
    Owner   = "Lemons"
    Planet  = "TheKingdom1"
  }
}

resource "aws_subnet" "public-ap-northeast-1b" {
  vpc_id                  = aws_vpc.Armageddon_Tokyo.id
  cidr_block              = "10.51.2.0/24"
  availability_zone       = "ap-northeast-1b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-northeast-1b"
    Service = "Setup1"
    Owner   = "Lemons"
    Planet  = "TheKingdom1"
  }
}


resource "aws_subnet" "public-ap-northeast-1c" {
  vpc_id                  = aws_vpc.Armageddon_Tokyo.id
  cidr_block              = "10.51.3.0/24"
  availability_zone       = "ap-northeast-1c"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-northeast-1c"
    Service = "Setup1"
    Owner   = "Lemons"
    Planet  = "TheKingdom1"
  }
}

#these are for private
resource "aws_subnet" "private-ap-northeast-1a" {
  vpc_id            = aws_vpc.Armageddon_Tokyo.id
  cidr_block        = "10.51.11.0/24"
  availability_zone = "ap-northeast-1a"

  tags = {
    Name    = "private-ap-northeast-1a"
    Service = "Setup1"
    Owner   = "Lemons"
    Planet  = "TheKingdom1"
  }
}

resource "aws_subnet" "private-ap-northeast-1b" {
  vpc_id            = aws_vpc.Armageddon_Tokyo.id
  cidr_block        = "10.51.12.0/24"
  availability_zone = "ap-northeast-1b"

  tags = {
    Name    = "private-ap-northeast-1b"
    Service = "Setup1"
    Owner   = "Lemons"
    Planet  = "TheKingdom1"
  }
}


resource "aws_subnet" "private-ap-northeast-1c" {
  vpc_id            = aws_vpc.Armageddon_Tokyo.id
  cidr_block        = "10.51.13.0/24"
  availability_zone = "ap-northeast-1c"

  tags = {
    Name    = "private-ap-northeast-1c"
    Service = "Setup1"
    Owner   = "Lemons"
    Planet  = "TheKingdom1"
  }
}
