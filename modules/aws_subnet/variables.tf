variable "vpc_id" {
  type    = string
  default = null
}

variable "subnet_cidr_blocks" {
  type    = list(string)
  default = null
}

variable "availability_zones" {
  type    = list(string)
  default = null
}

variable "subnet_name" {
  type    = string
  default = null
}