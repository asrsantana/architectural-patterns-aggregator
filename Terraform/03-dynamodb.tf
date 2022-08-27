// DYNAMODB TABLES
resource "aws_dynamodb_table" "produto" {
  name           = "produto"
  read_capacity  = "20"
  write_capacity = "20"
  hash_key       = "ID"

  attribute {
    name = "ID"
    type = "S"
  }
}
