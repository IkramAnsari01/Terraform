# Key pair Generation

resource "aws_key_pair" "aws-key"{
	key_name = "Terraform-Key"
	public_key = file("newKey.pub")

	tags = {
		Name = "Terraform-Key"
		Environment = var.env
	}

}

# VPC

resource aws_default_vpc "default-vpc"{
	

}

# Security Group

resource aws_security_group my-security-grp{
	name = "Terra_security_grp"
	description = "This is Auto-Generated security group"
	vpc_id = aws_default_vpc.default-vpc.id

	# Inbound Rules
	ingress{
		from_port = 22
		to_port = 22
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
		description = "This is SSh Port."
	}
	
	ingress{
		from_port = 80
		to_port = 80
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
		description = "This is HTTP Port."
	}
	
	ingress{
                from_port = 8000
                to_port = 8000
                protocol = "tcp"
                cidr_blocks = ["0.0.0.0/0"]
                description = "This is Extra Port."
        }


	# Outbound Rules

	egress{
		from_port = 0
		to_port = 0
		protocol = "-1"
		cidr_blocks = ["0.0.0.0/0"]

	}

	tags = {
		Name = "Terra_security_grp"
		Environment = var.env
	}



}

#  ec2 instance 

resource "aws_instance" "my_instance"{

	for_each = tomap({
		"Terra_Instance_micro" : "t3.micro",
		"Terra_Instance_small" : "t3.small"
	})

	key_name = aws_key_pair.aws-key.key_name
	security_groups = [aws_security_group.my-security-grp.name]
	instance_type = each.value #var.aws_instance_type   #"t3.micro"
	ami = var.aws_ami_id  #"ami-0974a2c5ddf10f442"

	user_data = file("install_ngnix.sh")

	root_block_device{
		volume_size = each.value == "t3.micro" ? 15 : 20 ##var.aws_root_storage_size  #15
		volume_type = "gp3"
	}
	
	tags = {
		Name = each.key  # "Terra-Created-Instance"
		Environment = var.env
	}


}
	
