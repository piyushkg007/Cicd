variable "region" {
  type        = string
  description = "The GCP region to deploy resources"
  default     = "us-central1"
}

variable "network_name" {
  type        = string
  description = "The name of the VPC network"
  default     = "q-pkg-terraform"
}

variable "subnetwork_name" {
  type        = string
  description = "The name of the subnet within the network"
  default     = "vpc-sub-piyu-terraform"
}

variable "subnetwork_ip_cidr" {
  type        = string
  description = "The CIDR block for the subnet"
  default     = "10.2.2.0/28"
}

variable "http_source_ranges" {
  type        = list(string)
  description = "List of CIDR ranges to allow HTTP traffic from"
  default     = ["0.0.0.0/0"]
}

variable "https_source_ranges" {
  type        = list(string)
  description = "List of CIDR ranges to allow HTTPS traffic from"
  default     = ["0.0.0.0/0"]
}

variable "vpc_connector_ip_cidr" {
  type        = string
  description = "The CIDR block for the VPC access connector"
  default     = "192.168.0.0/28"
}

variable "vpc_connector_project" {
  type        = string
  description = "The project ID for the VPC access connector"
  default     = "prj-qa-workshop-poc"
}

variable "vpc_connector_location" {
  type        = string
  description = "The location for the VPC access connector"
  default     = "us-central1"
}

variable "http_port" {
  type        = string
  description = "The port for HTTP traffic"
  default     = "80"
}

variable "https_port" {
  type        = string
  description = "The port for HTTPS traffic"
  default     = "443"
}

