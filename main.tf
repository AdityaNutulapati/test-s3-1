resource "aws_s3_bucket" "test" {
  bucket=var.bucketnname
  tags = {
    Name        = "Test bucket"
  }
}
