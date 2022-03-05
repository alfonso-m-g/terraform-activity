resource "aws_instance" "my_instance" {
  ami           = var.ami
  instance_type = "t2.micro"
  subnet_id     = var.subnet_id

  tags = {
    Name = var.instance_name
  }
}