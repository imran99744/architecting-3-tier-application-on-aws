resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.myeip.id
  subnet_id     = aws_subnet.public[0].id

  tags = {
    Name = "gw NAT"
  }

  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.gw]
}
