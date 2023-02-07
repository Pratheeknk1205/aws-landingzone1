# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#

module "packaging" {
  source = "./s3"
}
  
module "s3" {
  providers = {
    aws.primary_region   = aws.aft_management
    aws.secondary_region = aws.tf_backend_secondary_region
  }
  source           = "./s3"
  primary_region   = var.ct_home_region
  secondary_region = var.tf_backend_secondary_region
}
