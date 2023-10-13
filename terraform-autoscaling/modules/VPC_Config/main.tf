provider "aws" {
  region = "eu-west-1" # Specify your desired AWS region
}

# Existing VPC by its ID
data "aws_vpc" "existing_vpc" {
  id = "vpc-01bbb7200bc80a573" # Specify the ID of your existing VPC
}

# existing subnets within the VPC
data "aws_subnet" "existing_subnets" {
  id = data.aws_vpc.existing_vpc.id
}

# existing VPC security_group
data "aws_security_group" "example" {
  name        = "example-security-group"
  vpc_id      = data.aws_vpc.existing_vpc.id
}