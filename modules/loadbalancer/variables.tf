variable "cdn_timeout_sec" {
  type        = number
  description = "The timeout value for the Cloud CDN"
  default     = 30
}

variable "neg_name" {
  type        = string
  description = "The name of the Network Endpoint Group"
  default     = "serverless-neg"
}

variable "url_map_name" {
  type        = string
  description = "The name of the URL Map"
  default     = "url-map2"
}

variable "proxy_name" {
  type        = string
  description = "The name of the HTTP Proxy"
  default     = "http-proxy2"
}

variable "forwarding_rule_name" {
  type        = string
  description = "The name of the Forwarding Rule"
  default     = "forwarding-rule2"
}

variable "cloud_run_ref" {
  type        = string
  description = "The name of the URL Map"
  default     = "cloudrun.google_cloud_run_v2_service.default.name"
}

variable "region" {
  type        = string
  description = "The GCP region to deploy resources"
  default     = "us-central1"
}

variable "port_forwarding_rule" {
  type      = string
  default   = "80"     
}