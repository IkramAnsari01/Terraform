resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name       #"modular-${var.env}-Terraform-Bucket"

  tags = {
    Name = var.bucket_name       # "modular-${var.env}-Terraform-Bucket"
    Environment = var.env
  }
}