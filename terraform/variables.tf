### Shared variables
variable project_name {
  default = "AWS42TF"
}


variable "aws_region" {
    description = "EC2 Region for the VPC"
    default = "us-east-2"
}

variable "amis" {
    description = "AMIs by region"
    default = {
        instance = "ami-021e3167" # ubuntu 16.04 LTS
    }
}

variable "vpc_cidr" {
    description = "CIDR for the whole VPC"
    default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
    description = "CIDR for the Public Subnet"
    default = "10.0.0.0/24"
}

variable "private_subnet_cidr" {
    description = "CIDR for the Private Subnet"
    default = "10.0.1.0/24"
}
