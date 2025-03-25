variable "env"{
    description = "This is an environment for my infrastructure"
    type = string
}

variable "bucket_name"{
    description = "This is a bucket name for my s3 bucket for infrastructure"
    type=string
}

variable "ec2_key"{
    description = "This is the value of ec2 key"
    type = string
}

variable "instance_count"{
    description = "Number of instances you want to create"
    type = number
}

variable "instance_type"{
    description = "Type of instance you want to create"
    type = string
}

variable "instance_ami_id"{
    description = "Ami id of instance"
    type = string
}

variable "table_hash_key"{
    description = "Hash key for dynamodb table"
    type = string
}