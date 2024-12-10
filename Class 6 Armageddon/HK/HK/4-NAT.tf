resource "aws_eip" "nat" {
  # Removed deprecated 'vpc' argument

  tags = {
    Name = "nat"
  }
}

resource "aws_nat_gateway" "hong_kong_nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public-ap-east-1a.id

  tags = {
    Name = "nat"
  }

  depends_on = [aws_internet_gateway.hong_kong_igw]
}