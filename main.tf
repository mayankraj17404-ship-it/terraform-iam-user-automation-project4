provider "aws" {
  region = "ap-south-1"
}

resource "aws_iam_user" "terraform_user" {
  name = "Terraform-S3-ReadOnly-Policy-Project4-2026"
}

resource "aws_iam_policy" "s3_readonly" {
  name        = "Terraform-S3-ReadOnly-Policy-Project4-2026"
  description = "Read-only access to S3"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "s3:ListAllMyBuckets",
          "s3:ListBucket",
          "s3:GetObject"
        ]
        Resource = [
          "*"
        ]
      }
    ]
  })
}

resource "aws_iam_user_policy_attachment" "attach_policy" {
  user       = aws_iam_user.terraform_user.name
  policy_arn = aws_iam_policy.s3_readonly.arn
}
