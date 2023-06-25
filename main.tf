terraform {
  required_version = ">= 0.12"
}
provider "aws" {
  region = "eu-central-1"  # Найближчий до Києва
}
resource "aws_instance" "example" {
  ami           = "ami-0c94855ba95c71c99"  # Замініть на ваш AMI ID
  instance_type = "t2.micro"               # Замініть на ваш тип інстансу

  tags = {
    Name = "ExampleInstance"
  }
}
resource "aws_security_group" "example" {
  name        = "ExampleSecurityGroup"
  description = "Example security group for the application"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


