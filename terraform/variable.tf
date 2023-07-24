variable "vpc_cidr_block" {
  type        = string
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnets_cidr_blocks" {
  type        = list(string)
  description = "The CIDR block for the VPC subnet"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_subnets_cidr_blocks" {
  type        = list(string)
  description = "The CIDR block for the VPC subnet"
  default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

variable "enable_dns_hostnames" {
  type        = bool
  description = "Enable DNS hostnames in VPC"
  default     = true
}

variable "enable_nat_gateway" {
  type        = bool
  description = "Enable Nat Gateway in VPC"
  default     = true
}

variable "single_nat_gateway" {
  type        = bool
  description = "Single Nat Gateway in VPC"
  default     = true
}
