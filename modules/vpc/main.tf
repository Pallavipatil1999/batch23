resource "aws_vpc" "myvpc" {
  cidr_block = var.vpc-cidr
  tags = {
    Name = "myvpc"
  }
}
resource "aws_subnet" "pub-sub" {
  vpc_id                  = aws_vpc.myvpc.id
  availability_zone       = var.az1
  cidr_block              = var.pub-sub-cidr
  map_public_ip_on_launch = true
  tags = {
    Name = "pub-sub"
  }
}
resource "aws_subnet" "pvt-sub" {
  vpc_id            = aws_vpc.myvpc.id
  availability_zone = var.az2
  cidr_block        = var.pvt-sub-cidr
  tags = {
    Name = "pvt-sub"
  }
}
resource "aws_internet_gateway" "myigw" {
  vpc_id = aws_vpc.myvpc.id

}
resource "aws_route_table" "myroute" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = var.route-cidr
    gateway_id = aws_internet_gateway.myigw.id
  }
}
resource "aws_route_table_association" "myroute-sub" {
  subnet_id      = aws_subnet.pub-sub.id
  route_table_id = aws_route_table.myroute.id

}