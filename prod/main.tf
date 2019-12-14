module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "1.40.0"

  name = "${var.environment}-vpc"
  cidr = "10.0.0.0/16"

  azs            = ["ap-northeast-1a", "ap-northeast-1b", "ap-northeast-1c"]
  intra_subnets  = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
  public_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]

  tags = {
    Environment = "${var.environment}"
  }
}
