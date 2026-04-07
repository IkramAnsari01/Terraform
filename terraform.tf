terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
  bucket       = "common-terraform-bucket"
  key          = "terraform.tfstate"
  region       = "ap-south-1"
  encrypt      = true
  use_lockfile = true
}
  ##  when uncommenting backend, in terminal write: terraform init -migrate-state to migrate the state file to s3 bucket  
  ##  then do terraform apply
}
