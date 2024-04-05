


module "vpc" {
  source = "./modules/vpc"
  
  region              = var.region
  network_name        = var.network_name
  subnetwork_name     = var.subnetwork_name
  subnetwork_ip_cidr  = var.subnetwork_ip_cidr
}

module "cloudrun" {
  source = "./modules/cloudrun"

  cloud_run_frontend_image = var.cloud_run_frontend_image
  cloud_run_backend_image  = var.cloud_run_backend_image
  frontend_container_port  = var.frontend_container_port
  backend_container_port   = var.backend_container_port
  run_policy_role          = var.run_policy_role
  region                   = var.region
  vpc_connector            = module.vpc.vpc_connector_name
}

module "loadbalancer" {
  source = "./modules/loadbalancer"

  cdn_timeout_sec      = var.cdn_timeout_sec
  region               = var.region
  neg_name             = var.neg_name
  url_map_name         = var.url_map_name
  proxy_name           = var.proxy_name
  forwarding_rule_name = var.forwarding_rule_name
  cloud_run_ref        = module.cloudrun.cloud_run_frontendref
}



