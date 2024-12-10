resource "aws_internet_gateway" "sao_paulo_igw" {
  vpc_id = aws_vpc.sao_paulo.id

  tags = {
    Name    = "sao_paulo_IG"
    Service = "application1"
    Owner   = "White"
    Planet  = "Terra"
  }
}