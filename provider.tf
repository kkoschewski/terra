terraform {
  required_providers {
    ionoscloud = {
      source  = "ionos-cloud/ionoscloud"
      version = "6.4.18"
    }
    
  }
}

# provider "ionoscloud" {
#   token = var.IONOS_TOKEN
# }


provider "aws" {
  region            = "de"
  access_key        = var.AWS_ACCESS_KEY_ID
  secret_access_key = var.AWS_SECRET_ACCESS_KEY
}


