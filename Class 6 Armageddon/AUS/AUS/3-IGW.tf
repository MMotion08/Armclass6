resource "aws_internet_gateway" "australia_igw" {
  vpc_id = aws_vpc.australia.id

  tags = {
    Name    = "australia_IG"
    Service = "application1"
    Owner   = "White"
    Planet  = "Terra"
  }
}