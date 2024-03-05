resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.comento-public-c.id

  tags = {
    Name = "fastcampus-NAT"
    Env = "fastcampus"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.gw]
}

resource "aws_eip" "nat" {
  tags = {
    Name = "fastcampus-eip"
  }
}

resource "aws_s3_bucket" "bad_example" {
  bucket = "mybucket"
}

resource "aws_s3_bucket_public_access_block" "bad_example" {
  bucket = aws_s3_bucket.bad_example.id
}



resource "aws_ecr_repository" "bad_example" {
  name                 = "bar"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}

