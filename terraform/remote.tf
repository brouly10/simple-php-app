terraform {
  backend "s3" {
    bucket = "terraformaws42"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}
