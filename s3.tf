
data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "common-terraform-bucket"

  tags = {
    bucket = "common-terraform-bucket"       # "modular-${var.env}-Terraform-Bucket"
    #Environment = var.env
  }

}