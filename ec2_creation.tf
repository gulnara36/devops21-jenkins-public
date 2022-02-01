terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=3.34.0,<=3.35.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  #shared_credentials_file = "/var/lib/jenkins/.aws/credentials"
  profile = "default"
}

resource "aws_instance" "my-first-ec2" {
  ami           = "ami-06ad6c264ce8dab0d"
  instance_type = "t2.micro"
  tags = {
    Name  = "myec2-1"
    Owner = "Gulnara"
  }
}
