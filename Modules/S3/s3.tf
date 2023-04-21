resource "aws_s3_bucket" "test" {
  bucket=var.bucketname
  tags = {
    Ticket       = var.ticket_number
  }
}

