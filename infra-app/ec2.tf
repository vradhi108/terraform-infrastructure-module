resource "aws_key_pair" "deployer" {
  key_name   = "${var.env}-infra-app-key"
  public_key = var.ec2_key
  tags = {
    Environment=var.env
  }
}

resource "aws_default_vpc" "default_vpc"{

}

resource "aws_default_security_group" "default" {
  vpc_id = aws_default_vpc.default_vpc.id

  ingress {
    protocol  = "tcp"
    from_port = 22
    to_port   = 22
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.env}-infra-app-sg"
  }
}

resource "aws_instance" "terra-practice" {
    count = var.instance_count

    depends_on = [ aws_default_security_group.default, aws_key_pair.deployer]
    
    key_name = aws_key_pair.deployer.key_name
    
    vpc_security_group_ids = [aws_default_security_group.default.id]
    
    instance_type = var.instance_type
    
    ami = var.instance_ami_id

    root_block_device {
      volume_size = var.env == "prd" ? 20 : 10
    }

    tags ={
        Name = "${var.instance_count}-${var.env}-infra-app-instance"
        Environment = var.env
    }
    
    
}