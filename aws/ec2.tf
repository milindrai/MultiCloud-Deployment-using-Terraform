# AWS EC2 Instance
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}
