output "bucket_name" {
    value = aws_s3_bucket.bucket_1.id
}

output "bucket_arn" {
    value = aws_s3_bucket.bucket_1.arn
}