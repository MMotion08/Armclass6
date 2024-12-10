
resource "aws_nat_gateway" "california_nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public-us-west-1b.id

  tags = {
    Name = "nat"
  }

  depends_on = [aws_internet_gateway.california_igw]
}