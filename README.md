## Kubernetes basics for Kyiv DevOps Community 

### Requirements: 
- installed [gcloud binaries](https://cloud.google.com/sdk/docs/quickstart-mac-os-x)
 - installed latest [Terraform](https://www.terraform.io/downloads.html) 
 - service account key in [Google Cloud](https://console.cloud.google.com/apis/credentials) - [detailed tutorial](https://cloud.google.com/iam/docs/creating-managing-service-account-keys)
 - kubectl installed using gcloud
 - successfull `gcloud init` with your creds
 - installed [helm binary](https://github.com/kubernetes/helm/blob/master/docs/install.md)
 
### GKE cluster provision: 
0. paste your service account key to `terraform/envs/sample/credentials.json`
1. paste your project name to `terraform/envs/sample/sample.tf`
2. `cd terraform/envs/sample`
3. `terraform init`
4. `terraform get`
5. `terraform apply`

### Helm provisioning
0. connect to cluster using gcloud 
1. `helm init`
2. `helm install helm-charts/sample-app/`
3. wait 3-5 min to provision 
4. enjoy nginx default page

#### Advanced trainings
Try to make cluster with helm charts for socks shop: 

https://github.com/microservices-demo/microservices-demo
