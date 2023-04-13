resource "aws_s3_bucket" "example" {
  bucket = "afd"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

variable "bucketname" {
  description = "Bucket's name"
  type =string
  default = "aditya"
}
