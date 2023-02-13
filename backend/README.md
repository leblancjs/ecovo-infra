# Ecovo Infra - Backend

## Setup

```
terraform init
```

## Run

Define the following environment variables to authenticate with AWS:

- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY
- AWS_REGION
- TF_VAR_bucket
- TF_VAR_key

Run the following command:

```
terraform apply
```

This will create an S3 bucket to store the Terraform backend state, and an IAM user with a policy that has access to the bucket so that the CI can access it.
