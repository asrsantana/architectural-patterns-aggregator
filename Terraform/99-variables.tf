variable "region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_public_cidr" {
  default = "10.0.1.0/24"
}

variable "subnet_private_cidr" {
  default = "10.0.2.0/24"
}

variable "ipv4_full_cidr" {
  default = "0.0.0.0/0"
}

variable "ipv6_full_cidr" {
  default = "::/0"
}

variable "availabilityZoneA" {
  default = "us-east-1a"
}

variable "availabilityZoneB" {
  default = "us-east-1b"
}