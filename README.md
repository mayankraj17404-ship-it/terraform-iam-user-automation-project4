
# Project 4: IAM User Automation with Terraform

## Overview
This project automates AWS IAM user creation and custom policy attachment using Terraform.

## Services Used
- AWS IAM
- Terraform
- AWS CLI

## Resources Created
- IAM User
- Custom IAM Policy
- IAM User Policy Attachment

## Permissions Granted
The custom policy allows:
- s3:ListAllMyBuckets
- s3:ListBucket
- s3:GetObject

## Infrastructure
Terraform was used to provision and manage the IAM user, policy and policy attachment.

## Verification
Resources were verified using AWS CLI:
- List attached user policies
- Get IAM policy details
- Get policy version and permission document

## Cleanup
Terraform destroy is used to remove the resources created by this project.
