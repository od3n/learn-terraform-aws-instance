provider "aws" {
  profile    = "default"
  region     = "ap-southeast-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0b21b3ea2cb8660a5"
  instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
    vpc = true
    instance = aws_instance.example.id
}