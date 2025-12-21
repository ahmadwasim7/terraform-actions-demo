resource "aws_instance" "manual_ec2" {
  ami           = "ami-00ca570c1b6d79f36"
  instance_type = "t2.micro"

  tags = {
    Name        = "Amazon EC2 Server"
    Description = "Provisioned using Github Actions CI/CD through Terraform"
    Environment = "Prod"
  }
}