# Building two EC2 instances
# Made By Olimjon Nematov

provider "aws"{}

variable "UBUNTU_AMI_ID" {
    type        = string
    description = "Ubuntu AMI Id"
}

variable "CENTOS_AMI_ID" {
    type        = string
    description = "CentOS AMI Id"
}

resource "aws_instance" "ubuntu_instance" {
  ami = var.UBUNTU_AMI_ID
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.webserver-rule.id]
  user_data = "${file("script.sh")}" 

  tags = {
    Name = "Ubuntu WebServer"
  }
}

resource "aws_instance" "centos_instance" {
  ami = var.CENTOS_AMI_ID 
  instance_type = "t2.micro"
  user_data = "${file("script2.sh")}" 
  associate_public_ip_address = false
  vpc_security_group_ids = [aws_security_group.webserver-rule.id]


  tags = {
    Name = "CentOS WebServer"
  }
}

resource "aws_security_group" "webserver-rule" {
  name        = "webserver"
  description = "Allow TLS inbound traffic"

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "TLS from VPC"
    from_port        = -1
    to_port          = -1
    protocol         = "icmp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}

