variable "env"{
    type = string
}

variable "aws_instance_type"{
    type = string
}

variable "aws_root_storage_size"{
    type = number
}

variable "aws_ami_id"{
    type = string
}

variable "instance_count"{
    type = number
}

variable "bucket_name"{
    type = string
}

variable "dynamodb_table"{
    type = string
}

variable "lock_table_name"{
    type = string
}

variable "aws_region"{
    type = string
}

variable "workspace"{
    type = string
}