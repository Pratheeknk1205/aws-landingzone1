# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#

module "aft_backend" {
  providers = {
    aws.primary_region   = aws.aft_management
    aws.secondary_region = aws.tf_backend_secondary_region
  }
  source           = "./modules/aft-backend"
  primary_region   = var.ct_home_region
  secondary_region = var.tf_backend_secondary_region
}
