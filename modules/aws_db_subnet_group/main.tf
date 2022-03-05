resource "aws_db_subnet_group" "default" {
  name       = "main1"
  subnet_ids = var.subnet_ids

  tags = {
    Name = var.db_subnet_group_name
  }
}