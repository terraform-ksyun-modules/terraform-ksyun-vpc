variable "region" {
  default = "cn-beijing-6"
}
module "vpc" {
  source = "../../"
  vpc_name = "test-tf-vpc"
  cidr_block = "10.16.0.0/16"
  subnet_name = "test-tf-subnet"
  subnet_cidr_blocks = ["10.16.1.0/24","10.16.2.0/24"]
  subnet_types = ["Normal","Reserve"]
  subnet_use_num_suffix = true
  subnet_dns1s = ["114.114.114.114","8.8.8.8"]
}