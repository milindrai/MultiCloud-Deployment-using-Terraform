# AWS S3 Bucket
resource "aws_s3_bucket" "example" {
  bucket = "example-bucket"
  acl    = "private"
}
