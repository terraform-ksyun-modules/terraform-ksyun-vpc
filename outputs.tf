output "this_vpc_id" {
  description = "The VPC id"
  value       = local.this_vpc_id
}

output "this_vpc_name" {
  description = "The VPC name"
  value       = local.this_vpc_name
}

output "this_vpc_cidr_block" {
  description = "The VPC cidr block"
  value       = local.this_vpc_cidr_block
}

output "this_subnet_ids" {
  description = "List of subnet ids"
  value       = ksyun_subnet.subnets.*.id
}

output "this_subnet_names" {
  description = "List of subnet names"
  value       = ksyun_subnet.subnets.*.subnet_name
}

output "this_subnet_cidr_blocks" {
  description = "List of subnet cidr blocks"
  value       = ksyun_subnet.subnets.*.cidr_block
}

output "this_subnet_types" {
  description = "List of subnet types"
  value       = ksyun_subnet.subnets.*.subnet_name
}

output "this_availability_zones" {
  description = "List of availability zones in which subnet created."
  value       = ksyun_subnet.subnets.*.availability_zone
}