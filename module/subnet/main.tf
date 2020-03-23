resource "aws_subnet" "paris-vpc" {
  vpc_id     = "${var.vpc_id}"
  cidr_block = "${var.cidr_block}"

  tags = {
    Name = "Paris-VPC"
  }
}

