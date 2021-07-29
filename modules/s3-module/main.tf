resource "aws_s3_bucket" "varshagurralabucket" {
    bucket = var.bname
    acl = "private"

    tags = {
        Name = var.bname
        Environment = "Dev"
    }
}