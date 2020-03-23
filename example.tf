provider "aws" {
  profile    = "default"
  region     = "ap-southeast-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0cbc6aae997c6538a"
  instance_type = "t2.micro"
}