terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.27"
    }
  }
  required_version = ">=0.14.9"
}
provider "aws" {
  profile = "default"
  region  = "us-west-1"

}

resource "aws_instance" "my_aws_instance_1" {

  ami           = "ami-054965c6cd7c6e462"
  instance_type = "t2.micro"

  tags = {
    name = "MyFirstAppServerInstrance"
  }
}