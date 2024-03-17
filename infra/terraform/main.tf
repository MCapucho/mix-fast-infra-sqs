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