module "network" {
  source = "./modules/network/"

}


module "lambda" {
  source = "./modules/lambda"

}

module "sqlDB" {
  source      = "./modules/rds"
  db_name     = var.db_name
  db_password = var.db_password
  db_username = var.db_username
}


module "redis" {
  source = "./modules/elastic_cache"

}