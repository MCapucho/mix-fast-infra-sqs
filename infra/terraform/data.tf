data "aws_iam_policy_document" "mixfast_sqs_policy" {
  statement {
    sid    = "shsqsstatement"
    effect = "Allow"

    principals {
      type        = "AWS"
      identifiers = ["*"]
    }

    actions = [
      "sqs:SendMessage",
      "sqs:ReceiveMessage"
    ]

    resources = [
      aws_sqs_queue.mixfast-sqs-queue.arn
    ]
  }
}