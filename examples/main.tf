variable "region" {}
variable "my_vpc_cidr" {}
variable "my_vpc_name" {}
variable "my_vpc_private_subnet_cidrs" {
  type = list(map(string))
}
variable "my_vpc_private_restricted_cidrs" {
  type = list(map(string))
}
variable "my_vpc_public_subnet_cidrs" {
  type = list(map(string))
}

variable "tags" {
  type = map(string)
}

data "aws_availability_zones" "azs" {}

locals {
  azs = [data.aws_availability_zones.azs.names[0], data.aws_availability_zones.azs.names[1], data.aws_availability_zones.azs.names[2]]
}

module "my_vpc" {
  source = "github.com/garyellis/tf_module_aws_vpc?ref=v0.2.0"

  azs                                               = local.azs
  create_vgw                                        = false
  enable_natgw                                      = false
  name                                              = var.my_vpc_name
  private_subnets                                   = var.my_vpc_private_subnet_cidrs

  private_subnets_vgw_route_prop_enabled            = true
  private_restricted_subnets_vgw_route_prop_enabled = true
  private_restricted_subnets                        = var.my_vpc_private_restricted_cidrs
  public_subnets                                    = var.my_vpc_public_subnet_cidrs
  public_subnets_vgw_route_prop_enabled             = false
  tags                                              = var.tags
  vgw_id                                            = ""
  vpc_cidr                                          = var.my_vpc_cidr
  enable_s3_vpc_endpoint                            = true
  enable_dynamodb_vpc_endpoint                      = true
}


module "vpc_endpoints_sg" {
  source = "github.com/garyellis/tf_module_aws_security_group"

  description = format("%s security group", var.my_vpc_name)
  name        = var.my_vpc_name
  tags        = var.tags
  vpc_id      = module.my_vpc.vpc_id
}

locals {
  vpc_endpoints_subnet_ids = [
    for i in compact(module.my_vpc.private_subnets.*.id):
      i
  ]
}

module "vpc_interface_endpoints" {
  source = "../"

  name                     = var.my_vpc_name
  enable_all_vpc_endpoints = true
  vpc_id                   = module.my_vpc.vpc_id
  security_group_ids       = list(module.vpc_endpoints_sg.security_group_id)
  subnet_ids               = local.vpc_endpoints_subnet_ids
  tags                     = var.tags
}
