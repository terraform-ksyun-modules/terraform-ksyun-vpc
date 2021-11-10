# VPC
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.this_vpc_id
}

output "vpc_cidr_block" {
  description = "The VPC cidr block"
  value       = module.vpc.this_vpc_cidr_block
}

output "vpc_name" {
  description = "The name of the VPC"
  value       = module.vpc.this_vpc_name
}


# Subnets
output "subnet_ids" {
  description = "List of IDs of subnet"
  value       = module.vpc.this_subnet_ids
}

output "subnet_cidr_blocks" {
  description = "List of cidr blocks of subnet"
  value       = module.vpc.this_subnet_cidr_blocks
}

output "subnet_names" {
  description = "List of names of subnet"
  value       = module.vpc.this_subnet_names
}

output "subnet_types" {
  description = "List of types of subnet"
  value       = module.vpc.this_subnet_types
}