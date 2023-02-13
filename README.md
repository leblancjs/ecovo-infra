# Ecovo Infrastructure

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
