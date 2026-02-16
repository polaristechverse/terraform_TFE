module "nat" {
  source          = "app.terraform.io/PTVEP/nat/aws"
  version         = "1.0.0"
  env             = module.network.env
  Public_Subnet_1 = module.network.publicSubnets_Id_1
  vpc_name        = module.network.vpc_name
}
