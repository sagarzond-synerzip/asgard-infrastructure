terraform {
  required_version = "= 0.11.10"

  backend "s3" {
    bucket = "ecs-workshop-terraform-state-dev"
    key = "${unique_name}-cluster-dev.tfstate"
    dynamodb_table = "Terraform-Lock-Table"
    encrypt = true
    region = "us-east-1"
  }
}