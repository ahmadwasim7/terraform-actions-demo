# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform

provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "manual_ec2" {
  region                      = "ap-southeast-1"
  ami                         = "ami-093a7f5fbae13ff67"
  associate_public_ip_address = true
  instance_type               = "t2.micro"
  #key_name                             = "my_key_pair_usa"

  tags = {
    Name = "Managed from Terraform"
  }

  #vpc_security_group_ids      = [aws_security_group.manual_sg.id]

}
