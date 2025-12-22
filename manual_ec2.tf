resource "aws_instance" "manual_ec2" {
  ami           = "ami-00ca570c1b6d79f36"
  instance_type = "t2.micro"

  tags = {
    Environment = var.environment
  }
}
