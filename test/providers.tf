provider "aws" {
  region  = "${var.region}"
  profile = "terraform-${var.environment}"
  version = "1.35"
}

terraform {
  required_version = ">= 0.11.7"

  backend "s3" {
    profile = "terraform-test"
    bucket  = "hairinhi-terraform-backbone-test-ap-northeast-1"
    key     = "vpc/test.tfstate"
    region  = "ap-northeast-1"
    encrypt = "true"
  }
}
