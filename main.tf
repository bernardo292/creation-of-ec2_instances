module "vpc_module" {
  source                   = "./module/ec2/vpc"
  cidr_block_vpc                = var.cidr_block_vpc
  cidr_block_public_subnet1 = var.cidr_block_public_subnet1
  cidr_block_public_subnet2 =  var.cidr_block_public_subnet2
  cidr_block_private_subnet1 = var.cidr_block_private_subnet1
  cidr_block_private_subnet2 = var.cidr_block_private_subnet2
  aws_vpc_name = var.aws_vpc_name
}

module "ec2_module" {
  source                = "./module/ec2/ec2"
  instance_name         = var.instance_name
  role_name             = var.role_name
  policy_name           = var.policy_name
  instance_type         = var.instance_type
  key_name              = var.key_name
  instance_profile_name = var.instance_profile_name
  vpc_id = module.vpc_module.main_id
  subnet_id = module.vpc_module.module.vpc_module.public_subnet_1_id
  aws_iam_role_policy   = file("s3-policy.json")
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
}