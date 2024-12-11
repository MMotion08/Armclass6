# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "Armageddon_Tokyo" {
  cidr_block = "10.51.0.0/16"

  tags = {
    Name = "TheKingdom"
    Service = "setup1"
    Owner = "Lemons"
    Planet = "TheKingdom1"
    Country = "Japan"
  }
}

resource "aws_vpc" "Armageddon_Tokyo" {
  cidr_block = "10.51.0.0/16"

  tags = {
    Name = "TheKingdom"
    Service = "setup1"
    Owner = "Lemons"
    Planet = "TheKingdom1"
  }
}
