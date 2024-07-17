terraform {
  backend "s3" {
    bucket = "terraform-bucket-ragavi"
    key    = "terraform/backend"
    region = "us-east-2"
  }
}