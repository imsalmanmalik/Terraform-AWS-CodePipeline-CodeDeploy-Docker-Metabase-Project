provider "aws" {
  region = "eu-west-1"  # Change the region as needed
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "IBA-VPC"
  }
}

resource "aws_subnet" "public" {
  count = 3
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(aws_vpc.main.cidr_block, 3, count.index)
  availability_zone = element(["eu-west-1a", "eu-west-1b", "eu-west-1c"], count.index)
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-${count.index + 1}"
  }
}

resource "aws_subnet" "private" {
  count = 3
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(aws_vpc.main.cidr_block, 3, count.index + 3)
  availability_zone = element(["eu-west-1a", "eu-west-1b", "eu-west-1c"], count.index)

  tags = {
    Name = "private-subnet-${count.index + 1}"
  }
}
