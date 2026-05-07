resource "aws_lambda_function" "lambda_func" {
  filename      = data.archive_file.lambda_archiving.output_path
  function_name = "ses_lambda_function"
  role          = aws_iam_role.lambda_role.arn
  handler       = "send_email.lambda_handler"
  code_sha256   = data.archive_file.lambda_archiving.output_base64sha256

  runtime = "python3.12"

}