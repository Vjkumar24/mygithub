provider "aws" {
region = "ap-southeast-2"
}

locals {
instances ={"vijay":"ap-southeast-2a", "ravi":"ap-southeast-2b", "raman":"ap-southeast-2c"}
}

resource "aws_instance" "count" {
for_each = local.instances
ami = "ami-0dab9ecf8f21f9ff3"
instance_type = "t2.micro"
availability_zone = each.value
tags = {
Name = each.key
}
}
