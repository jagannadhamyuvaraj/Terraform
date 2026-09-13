provider "aws" {
    region = "us-east-2"
}


resource "aws_instance" "tf-server" {
   
     ami = "ami-06f5453d29c62393b"
     instance_type = "t3.micro"
     tags = {
        
        Name = "terraform-Ec2"

     }

}


