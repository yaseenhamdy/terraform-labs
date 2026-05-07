data "archive_file" "lambda_archiving" {
  type        = "zip"
  source_file = "${path.module}/send_email.py"
  output_path = "${path.module}/send_email.zip"
}