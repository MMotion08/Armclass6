resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.Armageddon_London.id

  tags = {
    Name    = "Armageddon_London_IG"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}
