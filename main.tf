 
module "dev-infra" { 
    source = "./modules"
    env = "dev"
    workspace = "dev"
    aws_region = "ap-south-1"
    aws_instance_type = "t3.micro"
    aws_root_storage_size = 15
    aws_ami_id = "ami-045443a70fafb8bbc"
    instance_count = 1
    bucket_name = "modular-dev-terraform-bucket"
    dynamodb_table = "terraform-lock-table"
    lock_table_name = "terraform-lock-table"
}

 
module "prod-infra" { 
    source = "./modules"
    env = "prod"
    workspace = "prod"
    aws_region = "ap-south-1"
    aws_instance_type = "t3.micro"
    aws_root_storage_size = 20
    aws_ami_id = "ami-045443a70fafb8bbc"
    instance_count = 2
    bucket_name = "modular-dev-terraform-bucket"
    dynamodb_table = "terraform-lock-table"
    lock_table_name = "terraform-lock-table"
}

 
module "stag-infra" { 
    source = "./modules"
    env = "stag"
    workspace = "stag"
    aws_region = "ap-south-1"
    aws_instance_type = "t3.micro"
    aws_root_storage_size = 10
    aws_ami_id = "ami-045443a70fafb8bbc"
    instance_count = 1
    bucket_name = "modular-dev-terraform-bucket"
    dynamodb_table = "terraform-lock-table"
    lock_table_name = "terraform-lock-table"
}