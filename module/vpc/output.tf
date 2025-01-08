##

output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}


output "public_subnet_id" {
    description = "The ID of the public subnet"
  value         = aws_subnet.public-subnet_id
}

output "private_subnet_id" {
     description = "The ID of the private subnet"
  value          = aws_subnet.private-subnet_id
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.gw.id
}