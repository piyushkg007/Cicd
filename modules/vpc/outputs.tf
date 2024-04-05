output "vpc_connector_name" {
  value = google_vpc_access_connector.svpc-connector.name
}

output "vpc_network_id" {
  value = google_compute_network.vpc-cr-lb.id
}

output "vpc_subnet_id" {
  value = google_compute_subnetwork.vpc-sub.id
}
