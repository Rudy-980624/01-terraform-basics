resource "aws_s3_bucket" "rudystud_s3_bucket" {
  bucket = "rudy-stud-98-s3-bucket"  # <-- valid name
}

# Enable versioning on the bucket
resource "aws_s3_bucket_versioning" "rudystud_s3_bucket" {
  bucket = aws_s3_bucket.rudystud_s3_bucket.bucket

  versioning_configuration {
    status = "Enabled"
  }
}

# Create IAM user
resource "aws_iam_user" "my_iam_user" {
  name = "my_iam_user_1"
}
