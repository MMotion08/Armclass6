resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.Armageddon_Tokyo.id

  tags = {
    Name    = "app1_IG"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}
