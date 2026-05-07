resource "aws_ses_email_identity" "email_1" {
  email = var.email1
}

resource "aws_ses_email_identity" "email_2" {
  email = var.email2
}
