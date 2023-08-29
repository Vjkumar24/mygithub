resource "aws_s3_bucket" "mybucket" {
bucket = "redvill99vj24"
}

resource "aws_dynamodb_table" "mytable" {
name = "terra-dynamo"
billing_mode = "PAY_PER_REQUEST"
hash_key = "LockID"
attribute {
name = "LockID"
type = "S"
}
}

resource "aws_instance" "my-instance" {
ami = "ami-053b0d53c279acc90"
instance_type = "t2.micro"
key_name = "keypair"
tags = {
Name = "backend-instance"
}
}
