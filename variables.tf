# VPC variables
variable "create" {
  description = "Whether to create vpc. If false, you can specify an existing vpc by setting 'vpc_id'."
  type        = bool
  default     = true
}

variable "vpc_id" {
  description = "The vpc id used to create several subnets. If set, the 'create' will be ignored."
  type        = string
  default     = ""
}

variable "vpc_name" {
  description = "The vpc name used to create a new vpc."
  type        = string
  default     = "tf-vpc"
}

variable "cidr_block" {
  description = "The cidr block used to create a new vpc."
  type        = string
  default     = "172.16.0.0/16"
}

variable "is_default" {
  description = "Set type is default when create a new vpc."
  type        = bool
  default     = false
}

#Sunbet variables
variable "availability_zones" {
  description = "List available zones to create several subnets."
  type        = list(string)
  default     = []
}

variable "subnet_cidr_blocks" {
  description = "List of cidr blocks used to create several new subnets. If not set, there is no new subnet will be created."
  type        = list(string)
  default     = []
}

variable "subnet_types" {
  description = "The subnet type used to create several new subnets."
  type        = list(string)
  default     = []
}

variable "subnet_dns1s" {
  description = "The subnet dns1 used to create several new subnets when subnet type is not Reserve."
  type        = list(string)
  default     = []
}

variable "subnet_dns2s" {
  description = "The subnet dns2 used to create several new subnets when subnet type is not Reserve."
  type        = list(string)
  default     = []
}


variable "subnet_name" {
  description = "The subnet name prefix used to create several new subnets."
  type        = string
  default     = "tf-subnet"
}

variable "subnet_use_num_suffix" {
  description = "Always append numerical suffix(like 01, 02 and so on) to subnet name, even if the length of `subnet_cidr_blocks` is 1"
  type        = bool
  default     = false
}


