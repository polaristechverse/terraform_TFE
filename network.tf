module "network" {
  source              = "app.terraform.io/PTVEP/network/aws"
  version             = "1.0.0"
  vpc_cidr            = "192.168.0.0/16"
  vpc_name            = "Polaris"
  env                 = "Prod"
  Public_Subnet_Cidr  = ["192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
  az                  = ["us-east-1a", "us-east-1b", "us-east-1c"]
  Private_Subnet_Cidr = ["192.168.10.0/24", "192.168.20.0/24", "192.168.30.0/24","192.168.40.0/24"]
  NGW                 = module.nat.NGW_ID
}
