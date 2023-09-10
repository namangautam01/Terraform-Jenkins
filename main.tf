provider "aws" {
    region = "us-east-1"  
}

resources "aws_instance" "foo" {
  count = 4 
  ami           = "ami-01c647eace872fc02"
  instance_type = "t2.micro"
  tags = {
      Name = "TF-Instance"
  }
}
