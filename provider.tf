provider "aws" {
  region = "ap-northeast-2"
}

terraform {
  backend "s3" {
    bucket = "fastcampus-backend"
    key = "tfstate/fastcampus"
    region = "us-east-1"
  }
}
