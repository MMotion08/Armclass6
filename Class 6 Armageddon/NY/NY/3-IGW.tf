resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.new_york.id

  tags = {
    Name    = "new_york_IG"
    Service = "application1"
    Owner   = "Hughes"
    Planet  = "Terra"
  }
}
