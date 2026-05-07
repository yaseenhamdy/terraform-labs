variable "aws_region" {
    type = string
    default = "us-east-1"
}

variable "email1" {
  type = string
  default = "yaseenhamdy74@gmail.com"
}

variable "email2" {
  type = string
  default = "yaseenhamdy888@gmail.com"
}

variable "db_username" {
  type = string
}

variable "db_password" {
  type      = string
  sensitive = true
}

variable "db_name" {
  type = string
}