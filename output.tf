# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
output "bucket_id" {
  description = "The name of the primary bucket."
  value       = aws_s3_bucket.primary-backend-bucket.id
}


output "kms_key_id" {
  description = "The globally unique identifier for the primary key."
  value       = aws_kms_key.encrypt-primary-region.key_id
}