module "instance" {
  source  = "app.terraform.io/PTVEP/instance/aws"
  version = "1.0.0"
  env     = module.network.env
  ami = {
    us-east-2  = "ami-06e3c045d79fd65d9"
    us-east-1  = "ami-0b6c6ebed2801a5cb"
    ap-south-1 = "ami-019715e0d74f695be"
  }
  key = {
    us-east-2  = "Desktp_key"
    us-east-1  = "Desktop_key"
    ap-south-1 = "Desktop_key"
  }
  type              = "t3.micro"
  public_subnet_id  = module.network.publicSubnets
  private_subnet_id = module.network.PrivateSubnets
  sg_id             = module.security.sg_id
  vpc_name          = module.network.vpc_name
  region            = var.region
  depends_on        = [module.network]

}
