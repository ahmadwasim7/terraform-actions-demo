resource "aws_instance" "manual_ec2" {
  instance_type = "t2.micro"

  tags = {
    Name = "Managed from Terraform"
  }
}

