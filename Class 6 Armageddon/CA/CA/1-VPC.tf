# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "california" {
  cidr_block = "10.55.0.0/16"

  tags = {
    Name = "california"
    Service = "application1"
    Owner = "Hughes"
    Planet = "Terra"
  }
}