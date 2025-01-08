variable "region" {
  type = string
  default = "us-east-2"
  description = "define the aws region"
}

variable "bi1" {
  type = string
  description = "Define the aws Availability zone"
  default = "us-east-2a"
}

variable "bi2" {
  type = string
  description = "Define the aws Availability zone"
  default = "us-east-2b"
}

variable "cidr_block_private_subnet1" {
  description = "CIDR block for the first private subnet"
  type        = string
  default = "10.0.2.0/24"
}

variable "vpc_name1" {
  type = string
  default = "private-subnet-1"
}

variable "cidr_block_private_subnet2" {
  description = "CIDR block for the second private subnet"
  type        = string
  default = "10.0.2.0/24"
}

variable "vpc_name2" {
  type = string
  default = "private-subnet-2"
}

variable "cidr_route_table_1" {
  type = string
  default = "0.0.0.0/0"
}

variable "cidr_route_table_2" {
  type = string
  default = "0.0.0.0/0"
}

variable "aws_vpc_name" {
  type = string
  description = "Define the vpc name"
  default = "bernardo_vpc"
}

variable "cidr_block_vpc" {
  type = string
  description = "Define the vpc cidr block"
  default = "10.0.0.0/8"
}

variable "instance_tenancy" {
  type = string
  default = "default"
}

variable "cidr_block_public_subnet1" {
  description = "CIDR block for the first public subnet"
  type        = string
  default = "10.0.1.0/24"
}

variable "vpc-name1" {
  type = string
  default = "public-subnet-1"
}

variable "cidr_block_public_subnet2" {
  description = "CIDR block for the second public subnet"
  type        = string
  default = "10.0.3.0/24"
}

variable "vpc-name2" {
  type = string
  default = "public-subnet-2"
}

variable "name_igw" {
  type = string
  default = "internet-gateway"
}

variable "cidr_block_route_table" {
  type = string
  default = "0.0.0.0/0"
}

variable "route_table_name" {
  type = string
  default = "bernardo_route_table"
}