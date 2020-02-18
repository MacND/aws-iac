resource "aws_route53_zone" "voluspa" {
  name = "voluspa.app"
}

resource "aws_route53_record" "voluspa_txt" {
  for_each = {
    ""  = "zoho-verification=zb72615107.zmverify.zoho.eu",
    ""  = "v=spf1 include:zoho.eu ~all"
  }
  zone_id = aws_route53_zone.voluspa.zone_id
  name    = each.key
  type    = "TXT"
  ttl     = 300
  records = [
    each.value
  ]
}

resource "aws_route53_record" "voluspa_cname" {
  for_each = {
    "zb72615107"  = "zmverify.zoho.eu."
  }
  zone_id = aws_route53_zone.voluspa.zone_id
  name    = each.key
  type    = "CNAME"
  ttl     = 300
  records = [
    each.value
  ]
}

resource "aws_route53_record" "voluspa_mx" {
  for_each = toset(var.mx_records)

  zone_id = aws_route53_zone.voluspa.zone_id
  name    = ""
  type    = "MX"
  ttl     = 300
  records = [
    each.value
  ]
}