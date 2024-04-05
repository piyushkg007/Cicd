variable "region" {
  type        = string
  description = "The GCP region to deploy resources"
  default     = "us-central1"
}

variable "cloud_run_backend_image" {
  type        = string
  description = "The image URI for the Cloud Run backend service"
  default     = "gcr.io/us-central1-docker.pkg.dev/prj-qa-workshop-poc/cloud-run-source-deploy/doc/doc-backend:latest"
}

variable "cloud_run_frontend_image" {
  type        = string
  description = "The image URI for the Cloud Run frontend service"
  default     = "gcr.io/prj-qa-workshop-poc/frontend-cr-tr:latest"
}

variable "run_policy_role" {
  type        = string
  description = "The IAM role for the Cloud Run service account"
  default     = "roles/run.invoker"
}

variable "frontend_container_port" {
  type        = number
  description = "Frontend container port"
  default     = 80
}

variable "backend_container_port" {
  type        = number
  description = "Backend container port"
  default     = 5000
}

variable "vpc_connector" {
  type        = string
  description = "The name of the VPC Connector"
  default     = "default"
}
