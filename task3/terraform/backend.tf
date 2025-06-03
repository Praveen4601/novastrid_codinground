terraform {
  backend "s3" {
    bucket = "//http://my-bucket.s3-website.us-east-1.amazonaws.com/novastrid_task3" //your-bucket-name
    key    = "infra/terraform.tfstate"
    region = "us-east-1"
  }
}