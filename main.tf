resource "aws_s3_bucket" "test" {
  bucket=var.bucketname
  tags = {
    Name        = "Test bucket"
  }
}
