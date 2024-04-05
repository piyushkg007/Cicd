region = "us-central1"

zone = "us-central1-a"

service_account_email = "terraform-test@prj-qa-workshop-poc.iam.gserviceaccount.com"

network_name = "q-pkg-terraform"

subnetwork_name = "vpc-sub-piyu-terraform"

subnetwork_ip_cidr = "10.0.0.0/28"

cloud_run_backend_image = "gcr.io/us-central1-docker.pkg.dev/prj-qa-workshop-poc/cloud-run-source-deploy/doc/doc-backend:latest"

cloud_run_frontend_image = "gcr.io/prj-qa-workshop-poc/divagarfe:latest"

run_policy_role = "roles/run.invoker"

cdn_timeout_sec = 30

neg_name = "serverless-neg"

url_map_name = "url-map2"

proxy_name = "http-proxy2"

forwarding_rule_name = "forwarding-rule2"

frontend_container_port =   80

backend_container_port  =   5000