# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "new_york" {
  cidr_block = "10.54.0.0/16"

  tags = {
    Name = "new_york"
    Service = "application1"
    Owner = "Hughes"
    Planet = "Terra"
  }
}