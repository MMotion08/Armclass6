# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "australia" {
  cidr_block = "10.53.0.0/16"

  tags = {
    Name = "australia"
    Service = "application1"
    Owner = "White"
    Planet = "Terra"
  }
}