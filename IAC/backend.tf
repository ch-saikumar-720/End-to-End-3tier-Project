terraform {
  backend "s3" {
    bucket       = "project-2026-statefile1"
    key          = "State/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
