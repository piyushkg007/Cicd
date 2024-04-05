output "backend_service_id" {
  value = google_compute_backend_service.default2.id
}

output "url_map_id" {
  value = google_compute_url_map.url_map.id
}

output "http_proxy_id" {
  value = google_compute_target_http_proxy.http_proxy.id
}

output "forwarding_rule_id" {
  value = google_compute_global_forwarding_rule.forwarding_rule.id
}
