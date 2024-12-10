# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "hong_kong" {
  cidr_block = "10.52.0.0/16"

  tags = {
    Name = "hong_kong"
    Service = "VPC"
    Owner = "Hughes"
    Planet = "Terra"
  }
}