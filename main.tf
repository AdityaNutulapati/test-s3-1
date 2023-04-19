resource "aws_s3_bucket" "test" {
  bucket=var.bucketname
  tags = {
    Name        = "Test bucket"
  }
}
output "akey" {
  value=var.aws_access_key_id
}
output "seckey" {
  value=var.aws_secret_access_key
}
