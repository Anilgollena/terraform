#creating 1st subnet
resource "aws_subnet" "demosubnet" {
  vpc_id                  = aws_vpc.demovpc.id
  cidr_block              = var.subnet_cidr
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"

  tags = {
    Name = "Public Subnet 1"
  }
}
#creating 2nd subnet
resource "aws_subnet" "demosubnet1" {
  vpc_id                  = aws_vpc.demovpc.id
  cidr_block              = var.subnet1_cidr
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1b"

  tags = {
    Name = "Public Subnet 2"
  }
}
#creating 1st application subnet
resource "aws_subnet" "application_subnet_1" {
  vpc_id                  = aws_vpc.demovpc.id
  cidr_block              = var.subnet2_cidr
  map_public_ip_on_launch = false
  availability_zone       = "us-east-1a"

  tags = {
    Name = "Application Subnet 1"
  }
}
#creating 2nd application subnet
resource "aws_subnet" "application_subnet_2" {
  vpc_id                  = aws_vpc.demovpc.id
  cidr_block              = var.subnet3_cidr
  map_public_ip_on_launch = false
  availability_zone       = "us-east-1b"

  tags = {
    Name = "Application Subnet 2"
  }
}
#creating database private subnet
resource "aws_subnet" "database_subnet_1" {
  vpc_id                  = aws_vpc.demovpc.id
  cidr_block              = var.subnet4_cidr
  map_public_ip_on_launch = false
  availability_zone       = "us-east-1a"

  tags = {
    Name = "Database Subnet 1"
  }
}
#creating 2nd database subnet
resource "aws_subnet" "database_subnet_2" {
  vpc_id                  = aws_vpc.demovpc.id
  cidr_block              = var.subnet5_cidr
  map_public_ip_on_launch = false
  availability_zone       = "us-east-1b"

  tags = {
    Name = "Database Subnet 2"
  }
}

