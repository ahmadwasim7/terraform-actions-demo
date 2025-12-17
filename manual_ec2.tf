resource "aws_instance" "manual_ec2" {
  ami           = "ami-0ecb62995f68bb549"
  instance_type = "t2.micro"

  tags = {
    Name        = "Ubuntu Server"
    Description = "Provisioned using Terraform through CI/CD on Githhub Actions"
    Environment = "Staging"
  }
}

