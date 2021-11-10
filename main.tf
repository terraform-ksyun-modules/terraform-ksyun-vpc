// If there is not specifying vpc_id, the module will create a new vpc
resource "ksyun_vpc" "vpc" {
  count      = var.vpc_id!="" ? 0 : var.create ? 1 : 0
  vpc_name   = var.vpc_name
  cidr_block = var.cidr_block
  is_default = var.is_default
}

// According to the vpc cidr blocks to create several subnets
resource "ksyun_subnet" "subnets" {
  count             = local.create_subnets ? length(var.subnet_cidr_blocks) : 0
  vpc_id            = var.vpc_id!="" ? var.vpc_id : concat(ksyun_vpc.vpc.*.id, [""])[0]
  cidr_block        = var.subnet_cidr_blocks[count.index]
  availability_zone = length(var.availability_zones) == length(var.subnet_cidr_blocks) ? element(var.availability_zones, count.index) : null
  subnet_type       = length(var.subnet_types) == length(var.subnet_cidr_blocks) ? element(var.subnet_types, count.index) : "Normal"
  subnet_name       = length(var.subnet_cidr_blocks) >1 || var.subnet_use_num_suffix ? format("%s%02d", var.subnet_name, count.index+1) : var.subnet_name
  dns1              = length(var.subnet_types) == length(var.subnet_cidr_blocks) ? element(var.subnet_types, count.index) == "Reserve"? null : length(var.subnet_dns1s) == length(var.subnet_cidr_blocks)?element(var.subnet_dns1s, count.index):null : length(var.subnet_types) == length(var.subnet_cidr_blocks)?element(var.subnet_dns1s, count.index):null
  dns2              = length(var.subnet_types) == length(var.subnet_cidr_blocks) ? element(var.subnet_types, count.index) == "Reserve"? null : length(var.subnet_dns2s) == length(var.subnet_cidr_blocks)?element(var.subnet_dns2s, count.index):null : length(var.subnet_types) == length(var.subnet_cidr_blocks)?element(var.subnet_dns2s, count.index):null
}




