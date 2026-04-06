
data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "${var.env}-${data.aws_caller_identity.current.account_id}-terraform-bucket"

  tags = {
    bucket = "${var.workspace}-${var.env}-terraform-bucket"       # "modular-${var.env}-Terraform-Bucket"
    Environment = var.env
  }

}