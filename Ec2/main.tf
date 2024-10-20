module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = terraform.workspace

  instance_type = local.instance_types[terraform.workspace]  # Select instance type based on the current workspace

  tags = {
    Terraform   = "true"
    Environment = terraform.workspace
  }
}
