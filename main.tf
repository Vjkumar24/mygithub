terraform {
required_providers {
aws = {
source = "hashicorp/aws"
version = "5.14.0"
}
}
backend "s3" {
bucket = "redvill99vj24"
key = "terraform.tfstate"
region = "us-east-1"
dynamodb_table = "terra-dynamo"
}
}
