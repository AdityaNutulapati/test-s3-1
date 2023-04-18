provider "aws" {
  region                      = "us-east-1"
  s3_use_path_style = true
  skip_credentials_validation = true
  skip_requesting_account_id  = true

  endpoints {
    s3                      = "http://aws:4566"
  }
}
