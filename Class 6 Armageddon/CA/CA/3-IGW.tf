
resource "aws_internet_gateway" "california_igw" {
  vpc_id = aws_vpc.california.id

  tags = {
    Name    = "app1_IG"
    Service = "application1"
    Owner   = "Hughes"
    Planet  = "Terra"
  }
}