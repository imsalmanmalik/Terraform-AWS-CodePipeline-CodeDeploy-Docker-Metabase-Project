terraform {
  backend "s3" {
    bucket         = "iba-state-bucket-terraform"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}
