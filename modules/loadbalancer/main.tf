resource "google_compute_backend_service" "default2" {
  provider    = google-beta
  name        = "backend-service2"
  enable_cdn  = true
  timeout_sec = var.cdn_timeout_sec

  backend {
    group = google_compute_region_network_endpoint_group.serverless_neg.id
  }
}

resource "google_compute_region_network_endpoint_group" "serverless_neg" {
  provider              = google-beta
  name                  = var.neg_name
  network_endpoint_type = "SERVERLESS"
  region                = var.region

  cloud_run {
    service = var.cloud_run_ref
  }
}

resource "google_compute_url_map" "url_map" {
  provider        = google-beta
  name            = var.url_map_name
  default_service = google_compute_backend_service.default2.self_link
}

resource "google_compute_target_http_proxy" "http_proxy" {
  provider = google-beta
  name     = var.proxy_name
  url_map  = google_compute_url_map.url_map.self_link
}

resource "google_compute_global_forwarding_rule" "forwarding_rule" {
  provider   = google-beta
  name       = var.forwarding_rule_name
  target     = google_compute_target_http_proxy.http_proxy.self_link
  port_range = var.port_forwarding_rule
}
