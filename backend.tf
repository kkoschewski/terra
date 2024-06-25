terraform {
  backend "s3" {
    bucket                      = "terraformstate"
    region                      = "de"
    key                         = "terraform.tfstate"
    endpoint                    = "https://s3.eu-central-3.ionoscloud.com/"
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true

  }
}


