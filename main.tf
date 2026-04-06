 
module "aws_resources" { 
    source = "./modules"
    env = "dev"
    aws_region = "ap-south-1"
    aws_instance_type = "t3.micro"
    aws_root_storage_size = 15
    aws_ami_id = "ami-045443a70fafb8bbc"
    instance_count = 1
    bucket_name = "modular-dev-terraform-bucket"
    dynamodb_table = "terraform-lock-table"
    lock_table_name = "terraform-lock-table"
}
