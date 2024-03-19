resource "aws_sqs_queue" "mixfast-sqs-queue" {
  name                       = "${var.name}-notificacao-pedido"
  delay_seconds              = 10
  visibility_timeout_seconds = 30
  max_message_size           = 2048
  message_retention_seconds  = 86400
  receive_wait_time_seconds  = 2
  sqs_managed_sse_enabled    = true
}

resource "aws_sqs_queue_policy" "sh_sqs_policy" {
  queue_url = aws_sqs_queue.mixfast-sqs-queue.id
  policy    = data.aws_iam_policy_document.mixfast_sqs_policy.json
}

resource "aws_sqs_queue" "mixfast-sqs-queue-pagamento-aprovado" {
  name                       = "${var.name}-notificacao-pedido-pagamento-aprovado"
  delay_seconds              = 10
  visibility_timeout_seconds = 30
  max_message_size           = 2048
  message_retention_seconds  = 86400
  receive_wait_time_seconds  = 2
  sqs_managed_sse_enabled    = true
}

resource "aws_sqs_queue_policy" "mixfast-sqs-queue-pagamento-aprovado-policy" {
  queue_url = aws_sqs_queue.mixfast-sqs-queue-pagamento-aprovado.id
  policy    = data.aws_iam_policy_document.mixfast_sqs_policy.json
}

resource "aws_sqs_queue" "mixfast-sqs-queue-pagamento-reprovado" {
  name                       = "${var.name}-notificacao-pedido-pagamento-reprovado"
  delay_seconds              = 10
  visibility_timeout_seconds = 30
  max_message_size           = 2048
  message_retention_seconds  = 86400
  receive_wait_time_seconds  = 2
  sqs_managed_sse_enabled    = true
}

resource "aws_sqs_queue_policy" "mixfast-sqs-queue-pagamento-reprovado-policy" {
  queue_url = aws_sqs_queue.mixfast-sqs-queue-pagamento-reprovado.id
  policy    = data.aws_iam_policy_document.mixfast_sqs_policy.json
}

resource "aws_sqs_queue" "mixfast-sqs-queue-cozinha" {
  name                       = "${var.name}-notificacao-pedido-cozinha"
  delay_seconds              = 10
  visibility_timeout_seconds = 30
  max_message_size           = 2048
  message_retention_seconds  = 86400
  receive_wait_time_seconds  = 2
  sqs_managed_sse_enabled    = true
}

resource "aws_sqs_queue_policy" "mixfast-sqs-queue-cozinha-policy" {
  queue_url = aws_sqs_queue.mixfast-sqs-queue-cozinha.id
  policy    = data.aws_iam_policy_document.mixfast_sqs_policy.json
}