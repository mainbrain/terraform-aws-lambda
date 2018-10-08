provider "aws" {
  region = "eu-west-1"
}

module "lambda" {
  source = "../../"

  name    = "basic"
  runtime = "nodejs8.10"
  handler = "index.handler"

  package_path = "${path.module}/index.js"
}
