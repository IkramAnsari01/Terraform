terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket         = "modular-dev-terraform-bucket"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "modular-terraform-lock-table"
    encrypt        = true
  }
  
}
