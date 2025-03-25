
module "github_lambda" {
  source                  = "../../"
  function_name           = "githubRepoFetcher"
  lambda_zip_path         = "${path.module}/lambda.zip"
  handler                 = "src.handler.lambda_handler"
  environment_variables   = {
    SECRET_NAME = "github-token"
  }
  tags = {
    project = "github-integration"
    env     = "dev"
  }
}
