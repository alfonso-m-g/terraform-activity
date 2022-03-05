# VPC

variable "cidr_block" {
  type    = string
  default = "172.16.0.0/16"
}

variable "vpc_name" {
  type    = string
  default = null
}

# Subnetwork

variable "subnet_cidr_block" {
  type    = string
  default = "172.16.10.0/24"
}

variable "availability_zone" {
  type    = string
  default = null
}

variable "subnet_name" {
  type    = string
  default = null
}

# EC2

variable "access_key" {
  type    = string
  default = null
}

variable "secret_key" {
  type    = string
  default = null
}

variable "instance_name" {
  type    = string
  default = null
}

# RDS

variable "subnet_cidr_blocks" {
  type    = list(string)
  default = ["172.16.10.0/24", "172.16.11.0/24"]
}

variable "availability_zones" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

variable "db_subnet_group_name" {
  type    = string
  default = "my-subnet-group"
}

variable "username" {
  type    = string
  default = null
}

variable "password" {
  type    = string
  default = null
}