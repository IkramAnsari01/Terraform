variable "aws_instance_type"{
	default = "t3.micro"
	type = string
}

variable "aws_root_storage_size"{
	default = 10
	type = number
}

variable "aws_ami_id"{
	default = "ami-0974a2c5ddf10f442"
	type = string
}

variable "env"{
	default = "prod"
	type = string
}


