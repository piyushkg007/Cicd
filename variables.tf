variable "region" {
  type        = string
  description = "The region to deploy resources"
}

variable "zone" {
  type        = string
  description = "The available zone within the region"
}

variable "service_account_email" {
  type        = string
  description = "The service account email "
}

variable "cdn_timeout_sec" {
  type        = number
  description = "The timeout value for the Cloud CDN"
}

variable "neg_name" {
  type        = string
  description = "The name of the Network Endpoint Group"
}

variable "url_map_name" {
  type        = string
  description = "The name of the URL Map"
}

variable "proxy_name" {
  type        = string
  description = "The name of the HTTP Proxy"
}

variable "forwarding_rule_name" {
  type        = string
  description = "The name of the Forwarding Rule"
}


variable "cloud_run_backend_image" {
  type        = string
  description = "The image URI for the Cloud Run backend service"
}

variable "cloud_run_frontend_image" {
  type        = string
  description = "The image URI for the Cloud Run frontend service"
}

variable "run_policy_role" {
  type        = string
  description = "The IAM role for the Cloud Run service account"
}

variable "frontend_container_port" {
  type        = number
  description = "Frontend container port"
}

variable "backend_container_port" {
  type        = number
  description = "backend container port"
}

variable "network_name" {
  type        = string
  description = "The name of the VPC network"
}

variable "subnetwork_name" {
  type        = string
  description = "The name of the subnet within the network"
}

variable "subnetwork_ip_cidr" {
  type        = string
  description = "The CIDR block for the subnet"
}