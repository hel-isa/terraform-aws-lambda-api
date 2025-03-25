
# terraform-aws-lambda-api-module

Módulo reutilizável Terraform para criar funções AWS Lambda com foco em integrações com APIs externas.

## Inputs

- `function_name`: Nome da função Lambda
- `lambda_zip_path`: Caminho para o zip da Lambda
- `handler`: Ponto de entrada da função (ex: `src.handler.lambda_handler`)
- `runtime`: Runtime da Lambda (default: `python3.11`)
- `timeout`: Tempo máximo de execução (default: `30`)
- `environment_variables`: Mapa de variáveis de ambiente
- `tags`: Tags aplicadas à Lambda

## Outputs

- `lambda_function_name`
- `lambda_role_arn`

## Exemplo de uso:

```hcl
module "github_lambda" {
  source                  = "git::https://github.com/seu-usuario/terraform-aws-lambda-api-module.git"
  function_name           = "githubRepoFetcher"
  lambda_zip_path         = "lambda.zip"
  handler                 = "src.handler.lambda_handler"
  environment_variables   = {
    SECRET_NAME = "github-token"
  }
}
```
