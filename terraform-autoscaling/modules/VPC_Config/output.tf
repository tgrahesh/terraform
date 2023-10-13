# Reference the existing VPC's CIDR block
output "existing_vpc_cidr_block" {
  value = data.aws_vpc.existing_vpc.cidr_block
}

# Reference the existing subnets' IDs
output "existing_subnet_ids" {
  value = data.aws_subnet.existing_subnets.id
}

# Reference the existing security group
output "existing_security_group" {
  value = data.aws_security_group.example.name
}
