
# Create new EC2 instance
resource "aws_instance" "app_server" {
  ami           = "ami-0b55fc9b052b03618"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}

# Create a VPC
resource "aws_vpc" "prod_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "prod"
  }
}

resource "aws_subnet" "prod-subnet-public" {
  vpc_id     = aws_vpc.prod_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "prod-subnet-public"
  }
}
