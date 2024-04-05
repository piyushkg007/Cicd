terraform {
  backend "gcs" {
    bucket = "q-gcloud-bkt-123piyush"
    prefix = "state/cloudrun"
    impersonate_service_account = "terraform-test@prj-qa-workshop-poc.iam.gserviceaccount.com"
  }
}
