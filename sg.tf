module "security" {
  source   = "app.terraform.io/PTVEP/security/aws"
  version  = "1.0.0"
  vpc_id   = module.network.vpc_id
  vpc_name = module.network.vpc_name
  env      = module.network.env
}
