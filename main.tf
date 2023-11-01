provider "aws" {
  region = "us-east-2"
}

# The general syntax for creating a resource in Terraform is as follows:
# resource "<PROVIDER>_<TYPE>" "<NAME>" {
#   [CONFIG ...]
# }

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
resource "aws_instance" "example" {
  ami = "ami-0fb653ca2d3203ac1"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-example"
  }
}