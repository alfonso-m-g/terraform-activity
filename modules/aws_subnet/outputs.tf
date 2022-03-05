output "id" {
  value = aws_subnet.my_subnet[*].id
}