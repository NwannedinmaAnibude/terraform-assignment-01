# main.tf

resource "aws_s3_bucket" "my_bucket" {
  bucket = "nwanne" # Replace this with your desired bucket name
  acl    = "public" # You can change the ACL (Access Control List) as per your requirements
}
