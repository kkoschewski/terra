terraform {
  required_providers {
    ionoscloud = {
      source  = "ionos-cloud/ionoscloud"
      version = "6.4.18"
    }
  }
}

provider "ionoscloud" {
  token = var.IONOS_TOKEN
}


provider "aws" {
  region            = "de"
  access_key        = ""
  secret_access_key = ""
  skip_region_validation      = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  skip_s3_checksum = true 

  }
  


