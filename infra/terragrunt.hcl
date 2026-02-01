remote_state {
  backend = "s3"
  config = {
    bucket         = "ai-analytics-tfstate"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}