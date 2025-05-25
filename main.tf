terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
 
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  # VERSION IS NOT NEEDED HERE
}

resource "aws_s3_bucket" "rudystud_s3_bucket" {
  bucket = "rudy-stud-98-s3-bucket_"

}

# plan - excute
resource "aws_s3_bucket_versioning" "rudystud_s3_bucket" {
    bucket = aws_s3_bucket.rudystud_s3_bucket.bucket
        versioning_configuration {
            status = "Enabled"
        }
    
}

resource "aws_iam_user" "my_iam_user" {
  name = "my_iam_user_1"
}

#STATE
#DESIRED - KNOWN - ACTUAL

output "my_s3_bucket_versioning" {
  value = aws_s3_bucket_versioning.rudystud_s3_bucket.versioning_configuration[0].status
}

output "rudystud_s3_bucket_complete_details" {
    value = aws_s3_bucket.rudystud_s3_bucket
}

output "my_iam_user_1" {
    value = aws_iam_user.my_iam_user
}