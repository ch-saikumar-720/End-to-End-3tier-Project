terraform {
  backend "s3" {
    bucket       = "terraform-tfstate-sai-kumar"
    key          = "State/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}