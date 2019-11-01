terraform {
  backend "s3" {
    bucket = var.bucket_name
    region = "us-west-1"
  }
}
