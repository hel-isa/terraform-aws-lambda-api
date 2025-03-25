
variable "function_name" {
  description = "Nome da função Lambda"
  type        = string
}

variable "lambda_zip_path" {
  description = "Caminho para o zip do código da Lambda"
  type        = string
}

variable "handler" {
  description = "Handler (ex: src.handler.lambda_handler)"
  type        = string
}

variable "runtime" {
  description = "Runtime da Lambda"
  type        = string
  default     = "python3.11"
}

variable "timeout" {
  description = "Timeout da execução"
  type        = number
  default     = 30
}

variable "environment_variables" {
  description = "Variáveis de ambiente"
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "Tags para a Lambda"
  type        = map(string)
  default     = {}
}
