resource "aws_subnet" "my_subnet" {
  vpc_id            = var.vpc_id
  cidr_block        = var.subnet_cidr_blocks[count.index]
  availability_zone = var.availability_zones[count.index]
  count = 2

  tags = {
    Name = var.subnet_name
    Name = "${var.subnet_name}-${count.index}"
  }
}