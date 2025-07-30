provider "aws" {
    region = "us-east-1"
}


resource "aws_instance" "vk0861"{
    ami = "ami-0c55b159cbfafe1f0"
    instance_type = "t2.micro"
    count = var.core_count

    tags = {
      Name = "vk0861instance"
    }
}