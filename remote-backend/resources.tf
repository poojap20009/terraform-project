resource "aws_s3_bucket" "my-s3-bucket" {
  bucket = "terrapro-demo-state-bucket"
}

resource "aws_dynamodb_table" "my-dynamodb-table" {
  name           = "terrapro-demo-state-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
