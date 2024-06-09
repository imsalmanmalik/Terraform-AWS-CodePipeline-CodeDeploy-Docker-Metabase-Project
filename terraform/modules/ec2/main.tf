variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "private_subnets" {
  description = "The private subnets in the VPC"
  type        = list(string)
}

resource "aws_security_group" "ec2_sg" {
  name_prefix = "ec2-sg-"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ec2-security-group"
  }
}

resource "aws_instance" "app" {
  count         = 3
  ami           = "ami-003c6328b40ce2af6"  # Ubuntu 22.04 LTS
  instance_type = "t2.micro"
  subnet_id     = element(var.private_subnets, count.index)
  key_name      = "salmans-key"  
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install -y nginx docker
              sudo amazon-linux-extras install -y nodejs
              sudo service nginx start
              sudo service docker start
              sudo usermod -a -G docker ec2-user
              EOF

  tags = {
    Name = "app-instance-${count.index + 1}"
  }
}
