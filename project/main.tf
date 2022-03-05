module "vpc_module" {
  source     = "../modules/aws_vpc"
  cidr_block = var.cidr_block
  vpc_name   = var.vpc_name
}

module "subnet_module" {
  source             = "../modules/aws_subnet"
  vpc_id             = module.vpc_module.vpc_id
  subnet_name        = var.subnet_name
  subnet_cidr_blocks = var.subnet_cidr_blocks
  availability_zones = var.availability_zones

  depends_on = [
    module.vpc_module
  ]
}

module "ec2_module" {
  source        = "../modules/ec2"
  subnet_id     = module.subnet_module.id[0]
  instance_name = var.instance_name

  depends_on = [
    module.subnet_module
  ]
}

module "rds_subnet_group_module" {
  source               = "../modules/aws_db_subnet_group"
  subnet_ids           = module.subnet_module.id
  db_subnet_group_name = var.db_subnet_group_name

  depends_on = [
    module.subnet_module
  ]
}

module "rds_instance_module" {
  source               = "../modules/aws_rds"
  username             = var.username
  password             = var.password
  db_subnet_group_name = module.rds_subnet_group_module.db_subnet_group_name

  depends_on = [
    module.rds_subnet_group_module
  ]
}