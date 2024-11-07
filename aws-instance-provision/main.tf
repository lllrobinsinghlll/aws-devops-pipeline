# Configure AWS provider
provider "aws" {
  region = "us-east-1"  # US East (N. Virginia) region
}

# Create EC2 instance
resource "aws_instance" "dev_instance" {
  ami           = "ami-06b21ccaeff8cd686"  # Example Amazon Linux AMI
  instance_type = "t2.micro"               # Instance type (Free tier)

  tags = {
    Name = "DevOpsInstance"
  }
}

# Output the instance ID
output "instance_id" {
  value = aws_instance.dev_instance.id
}
