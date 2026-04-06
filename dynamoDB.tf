resource "aws_dynamodb_table" "terraform_lock" {
  name         = "modular-terraform-lock-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "modular-terraform-lock-table"
  }
}