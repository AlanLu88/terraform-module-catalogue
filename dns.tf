resource "cloudflare_record" "default" {
  zone_id  = var.zone_id
  for_each = var.a_record_info
  name     = each.key
  value    = each.value
  type     = var.type
  ttl      = var.ttl
}