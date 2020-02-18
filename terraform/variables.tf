variable "region" {
  type = string
  default = "eu-west-1"
}

variable "vpc" {
  type = map
  default = {
    "cidr_block" = "10.0.0.0/20"
    "tags_Name" = "Production VPC"
  }
}

variable "subnets" {
  type      = map
  default   = {
    "private_cidr"  = "10.0.0.0/27"
    "public_cidr"   = "10.0.0.32/27"
  }
}

variable "mx_records" {
  type    = list(string)
  default = ["10 mx.zoho.eu", "20 mx2.zoho.eu", "50 mx3.zoho.eu"]
}