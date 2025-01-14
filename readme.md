## Using consul as backend 
1. The backend.tf file is configured to store the Terraform state file on the Consul server.
```
backend "consul" {
    address      = "127.0.0.1:8500"
    scheme       = "http"
    path         = "terraform/state"
    lock         = true
    access_token = "26d48902-905e-ec83-9a29-e70a40558636"
  }
```
**Note:** It is not safe to use a token in configuration in text. A local consul server is created for testing the locking feature.
      
2. This repository is creating one VPC and setting up public and private subnets.
