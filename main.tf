provider "aws" {
    region = "us-east-1"  
}

resources "aws_instance" "foo" {
  count = 4 
  ami           = "ami-05fa00d4c63e32376" # us-west-2
  instance_type = "t2.micro"
  tags = {
      Name = "TF-Instance"
  }
}
