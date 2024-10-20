module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name =  local.name[terraform.workspace]
  cidr = "10.0.0.0/16"

  azs             = ["us-west-1a", "us-west-1b"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]
  
  create_multiple_public_route_tables = false

  tags = {
    Terraform = "true"
    Environment = terraform.workspace
  }
}