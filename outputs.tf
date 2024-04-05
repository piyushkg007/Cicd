output "vpc_network_id" {
  value = module.vpc.vpc_network_id
}

output "vpc_subnet_id" {
  value = module.vpc.vpc_subnet_id
}

output "backend_service_id" {
  value = module.loadbalancer.backend_service_id
}

output "url_map_id" {
  value = module.loadbalancer.url_map_id
}

output "http_proxy_id" {
  value = module.loadbalancer.http_proxy_id
}

output "forwarding_rule_id" {
  value = module.loadbalancer.forwarding_rule_id
}
