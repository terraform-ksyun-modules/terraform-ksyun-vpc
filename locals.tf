locals {
  # Whether to create other resources in which the vpc
  create_subnets      = var.vpc_id !="" || var.create ? true : false
  this_vpc_id         = var.vpc_id !="" ? var.vpc_id : concat(ksyun_vpc.vpc.*.id, [""])[0]
  this_vpc_name       = local.this_vpc_id == "" ? "" : concat(data.ksyun_vpcs.this.vpcs.*.vpc_name, [""])[0]
  this_vpc_cidr_block = local.this_vpc_id == "" ? "" : concat(data.ksyun_vpcs.this.vpcs.*.cidr_block, [""])[0]
}

data "ksyun_vpcs" "this" {
  ids = var.vpc_id != "" ? [var.vpc_id] : null
}