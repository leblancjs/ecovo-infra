# Ecovo Infrastructure

## Backend

An AWS S3 Bucket is used as a Terraform backend. To create the bucket, an IAM user that has access to the bucket, and an access key to let the CI (i.e.: GitHub Actions) use AWS, see the instructions under the [backend/](backend/README.md) folder.

## Setup

Run the following command:

```
terraform init
```

## Provision

Ensure that the following environment variables are set:

- TF_VAR_auth0_domain
- AUTH0_DOMAIN
- AUTH0_CLIENT_ID
- AUTH0_CLIENT_SECRET
- ABLY_ACCOUNT_TOKEN
- AWS_REGION
- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY

Run the following command:

```
terraform apply
```
