resource "aws_eip" "nat" {
  vpc = true

  tags = {
    Name = "nat"
  }
}
###########################
resource "aws_nat_gateway" "sao_paulo_nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public-sa-east-1a.id

  tags = {
    Name = "nat"
  }

  depends_on = [aws_internet_gateway.sao_paulo_igw]
}