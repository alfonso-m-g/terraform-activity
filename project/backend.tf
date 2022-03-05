terraform {
  backend "s3" {
    bucket     = "alfonso-bucket"
    key        = "terraform/states/terraform.tfstate"
    region     = "us-east-1"
    access_key = "AKIAXNCUH4TB4PC6V7W7"
    secret_key = "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"
  }
}