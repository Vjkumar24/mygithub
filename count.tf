provider "aws" {
region = "ap-southeast-2"
}

resource "aws_instance" "count" {
count = 3
ami = "ami-0dab9ecf8f21f9ff3"
instance_type = "t2.micro"
tags = {
Name = "instance- ${count.index}"
}
}
