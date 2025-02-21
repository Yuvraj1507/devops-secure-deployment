
provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
}

resource "aws_eks_cluster" "eks_cluster" {
  name     = "secure-eks-cluster"
  role_arn = "arn:aws:iam::123456789012:role/EKSClusterRole"

  vpc_config {
    subnet_ids = [aws_subnet.subnet1.id]
  }
}
