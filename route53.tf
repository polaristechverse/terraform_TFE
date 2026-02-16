data "aws_route53_zone" "cgit" {
  name         = "polarisonline.site."
  private_zone = false
}

resource "aws_route53_record" "www" {
  zone_id = data.aws_route53_zone.cgit.zone_id
  name    = "prod.polarisonline.site"
  type    = "A"
  alias {
    name                   = module.elb.dns_name
    zone_id                = module.elb.zone_id
    evaluate_target_health = true
  }
}
