# gke-private-cluster-cloudsql

Demonstrating secure connectivity from kubernetes applications to CloudSQL databases

## Setup

1. Signup on https://www.terraform.io/ for a free account to store your terraform state or store the state on a GCP Object Store - [https://www.terraform.io/docs/backends/types/gcs.html](https://www.terraform.io/docs/backends/types/gcs.html). Then update terraform/providers.tf based on your selection
2. Create a service account and store credentials.json in /terraform directory
