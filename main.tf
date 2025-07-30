terraform {
  backend "s3" {
    bucket = "vk0861-terraform-state"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
    region = "us-east-1"
}


resource "aws_instance" "vk0861"{
    ami = "ami-08a6efd148b1f7504"
    instance_type = "t2.micro"
    count = var.core_count

    tags = {
      Name = "vk0861instance"
    }
}