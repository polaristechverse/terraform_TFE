module "elb" {
  source         = "app.terraform.io/PTVEP/elb/aws"
  version        = "1.0.0"
  tgname         = "PolarisProdTG"
  vpc_id         = module.network.vpc_id
  env            = module.network.env
  PrivateServers = module.instace.PrivateInstance
  PublicServers  = module.instace.PublicInstance
  nlbname        = "polarisnlb"
  Public_subnets = module.network.publicSubnets
  sg_id          = module.security.sg_id
  certarn        = null

}
