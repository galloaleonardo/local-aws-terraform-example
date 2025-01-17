# Local AWS Terraform Example

# Requirements:
- Docker
- Terraform CLI
- AWS CLI

# How to run:

## Run localstack docker image
- We will use localstack to simulate AWS services.
```bash
docker run --rm -it -p 4566:4566 -p 4510-4559:4510-4559 localstack/localstack
```
_(Terminal tab 01)._

## Export fake AWS credentials
```bash 
export AWS_ACCESS_KEY_ID="mock_access_key"
export AWS_SECRET_ACCESS_KEY="mock_secret_key"
```
_(Terminal tab 02)._

## Run Terraform
- Initialize:
```bash
terraform init
```

- Plan:
```bash
terraform plan
```

- Apply:
```bash
terraform apply
```
_(You need to confirm with "yes")._  
_(Terminal tab 02)._

## Check the created resources
```bash
aws --endpoint-url=http://localhost:4566 s3 ls
aws --endpoint-url=http://localhost:4566 ec2 describe-instances
```
_(Terminal tab 02)._

## Destroy the resources
```bash
terraform destroy
```
_(Terminal tab 02)._

---

Enjoy! =)