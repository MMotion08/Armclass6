resource "aws_internet_gateway" "hong_kong_igw" {
  vpc_id = aws_vpc.hong_kong.id

  tags = {
    Name    = "hong_kong_IG"
    Service = "application1"
    Owner   = "Hughes"
    Planet  = "Terra"
  }
}
