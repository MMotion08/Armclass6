resource "aws_eip" "nat" {
  vpc = true

  tags = {
    Name = "nat"
  }
}

resource "aws_nat_gateway" "australia_nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public-ap-southeast-2a.id

  tags = {
    Name = "nat"
  }

  depends_on = [aws_internet_gateway.australia_igw]
}