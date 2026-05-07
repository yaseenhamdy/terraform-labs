
resource "aws_iam_policy" "lambda_ses_policy" {
  name        = "lambda_ses_policy"
  path        = "/"
  description = "IAM policy for send emails from Lambda"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "ses:SendEmail",
          "ses:SendRawEmail"
        ]
        Resource = "*"
      }
    ]
  })
}
