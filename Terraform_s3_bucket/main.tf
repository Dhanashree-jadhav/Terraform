
# s3 bucket creation using terraform

resource "aws_s3_bucket" "sample_bucket" {
  bucket = "terraform-student-bucket"
}
