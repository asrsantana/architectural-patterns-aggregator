resource "aws_vpc" "modelo_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "modelo-vpc"
  }
}

resource "aws_subnet" "subnet_private_a" {
  vpc_id                  = aws_vpc.modelo_vpc.id
  cidr_block              = var.subnet_private_cidr
  map_public_ip_on_launch = false
  availability_zone       = var.availabilityZoneB
  tags = {
    Name = "Private Subnet"
  }
} 

 resource "aws_subnet" "subnet_public_a" {
  vpc_id                  = aws_vpc.modelo_vpc.id
  cidr_block              = var.subnet_public_cidr
  map_public_ip_on_launch = true
  availability_zone       = var.availabilityZoneA
  tags = {
    Name = "Public Subnet"
  }
}

