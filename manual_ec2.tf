resource "aws_instance" "manual_ec2" {
  ami           = "ami-093a7f5fbae13ff67"
  instance_type = "t2.micro"

  associate_public_ip_address = "true" # ❌ should be boolean

  tags = {
    Name = "Managed from Terraform"
  }
}

