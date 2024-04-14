terraform {
  backend "s3" {
    # don't use variables here, just use values
    bucket         = "barney-terraform-remote-state"
    key            = "quiz-app/terraform.tfstate"
    region         = "ap-southeast-2"
    dynamodb_table = "quiz-app-terraform-state-lock"
  }
}