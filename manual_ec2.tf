resource "aws_instance" "manual_ec2" {
  ami           = "ami-068c0051b15cdb816"
  instance_type = "t2.micro"

  tags = {
    Name        = "Amazon EC2 Server"
    Description = "Provisioned using Terraform through CI/CD on Githhub Actions"
    Environment = "Prod"
  }
}