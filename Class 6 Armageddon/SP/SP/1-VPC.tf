# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "sao_paulo" {
  cidr_block = "10.56.0.0/16"

  tags = {
    Name = "sao_paulo"
    Service = "application1"
    Owner = "White"
    Planet = "Terra"
  }
}