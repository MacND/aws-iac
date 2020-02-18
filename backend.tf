provider "aws" {
  region  = var.region
}

# resource "aws_s3_bucket" "terraform_backend" {
#   bucket = "terraform-backend"
#   acl    = "private"
#   versioning {
#     enabled = true
#   }
#   lifecycle {
#     prevent_destroy = true
#   }
# }

# terraform {
#   backend "s3" {
#     bucket = aws_s3_bucket.terraform_backend.bucket
#     key    = "terraform.tfstate"
#     region = var.region
#   }
# }
