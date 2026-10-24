output "vpc_id" {
  value = aws_vpc.main.id
}

output "instance_public_ip" {
  value = aws_instance.web.public_ip
}

output "s3_bucket_name" {
  value = aws_s3_bucket.public.bucket
}

output "s3_object_url" {
  value = "http://${aws_s3_bucket.public.bucket}.s3.amazonaws.com/index.html"
}