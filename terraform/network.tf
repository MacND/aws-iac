provider "aws" {
  region  = var.region
}

resource "aws_vpc" "main" {
  cidr_block  = var.vpc.cidr_block
  
  tags = {
    Name = var.vpc.tags_Name
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id      = aws_vpc.main.id
  cidr_block  = var.subnets.private_cidr
}

resource "aws_subnet" "public_subnet" {
  vpc_id      = aws_vpc.main.id
  cidr_block  = var.subnets.public_cidr
}