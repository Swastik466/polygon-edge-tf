provider "aws" {
  shared_config_files       = ["C:/Users/91991/.aws/config"]
  shared_credentials_files  = ["C:/Users/91991/.aws/credentials"]
  region                    = var.region
}

provider "awscc" {
    version                  = ">= 0.27.0"
    shared_config_files      = ["C:/Users/91991/.aws/config"]
    shared_credentials_files = ["C:/Users/91991/.aws/credentials"]
    region                    = var.region
}

module "test-main" {
  source              = "../"
  alb_ssl_certificate = var.alb_ssl_certificate
  premine             = var.premine

}