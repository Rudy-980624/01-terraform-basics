output "my_s3_bucket_versioning" {
  description = "The versioning status of the S3 bucket"
  value       = aws_s3_bucket_versioning.rudystud_s3_bucket.versioning_configuration[0].status
}

output "rudystud_s3_bucket_complete_details" {
  description = "All attributes of the created S3 bucket"
  value       = aws_s3_bucket.rudystud_s3_bucket
}

output "my_iam_user_1" {
  description = "The created IAM user details"
  value       = aws_iam_user.my_iam_user
}
