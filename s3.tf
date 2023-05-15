terraform {
  required_version = ">= 0.12.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "foo" {
  acl    = "public-read-write"
  bucket = "systest-tf-log-bucket-bb33"
  versioning {
    enabled = false
  }
  tags = merge({
    Demo = "public-read-write"
    }, {
    yor_trace = "a51262fb-deff-4dc2-b18a-075f6b6c426f"
    git_commit           = "dd9fb87aa4652d07b39fdb21cde1ace618cbb76e"
    git_file             = "s3.tf"
    git_last_modified_at = "2023-05-13 00:51:51"
    git_last_modified_by = "belle.bao@gmail.com"
    git_modifiers        = "belle.bao"
    git_org              = "bellebao"
    git_repo             = "test"
  })
}
