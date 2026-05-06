terraform {
  backend "s3" {
    bucket         = "yaseen-terraform-state"
    key            = "lab2/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "lock-state"
    profile = "yaseen"
  }
}