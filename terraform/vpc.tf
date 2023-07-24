module "webapp-vpc" {
  source          = "terraform-aws-modules/vpc/aws"
  version         = "5.0.0"
  name            = "webapp-vpc"
  cidr            = var.vpc_cidr_block
  private_subnets = var.private_subnets_cidr_blocks
  public_subnets  = var.public_subnets_cidr_blocks
  azs             = data.aws_availability_zones.azs.names

  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true

  tags = local.tags

}

data "aws_availability_zones" "azs" {}