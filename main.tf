module "dev-infra"{
    source = "./infra-app"
    env = "dev"
    bucket_name = "vradhi-infra-app-bucket"
    ec2_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOmHl2kkHGCH99n47aNPyanRHO7F8tLlpOr5FCEaAqJG vradhi bishnoi@DESKTOP-DJDJFNU"
    instance_count = 1
    instance_type = "t2.micro"
    instance_ami_id = "ami-084568db4383264d4"
    table_hash_key = "studentID"

}

module "prd-infra"{
    source = "./infra-app"
    env = "prd"
    bucket_name = "vradhi-infra-app-bucket"
    ec2_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOmHl2kkHGCH99n47aNPyanRHO7F8tLlpOr5FCEaAqJG vradhi bishnoi@DESKTOP-DJDJFNU"
    instance_count = 2
    instance_type = "t2.medium"
    instance_ami_id = "ami-084568db4383264d4"
    table_hash_key = "studentID"

}

module "stg-infra"{
    source = "./infra-app"
    env = "stg"
    bucket_name = "vradhi-infra-app-bucket"
    ec2_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOmHl2kkHGCH99n47aNPyanRHO7F8tLlpOr5FCEaAqJG vradhi bishnoi@DESKTOP-DJDJFNU"
    instance_count = 1
    instance_type = "t2.small"
    instance_ami_id = "ami-084568db4383264d4"
    table_hash_key = "studentID"

}