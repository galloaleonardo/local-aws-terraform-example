provider "aws" {
  access_key                  = "mock_access_key"
  secret_key                  = "mock_secret_key"
  region                      = "us-east-1"
  s3_use_path_style           = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    s3 = "http://s3.localhost.localstack.cloud:4566"
    ec2 = "http://ec2.localhost.localstack.cloud:4566"
  }
}

resource "aws_s3_bucket" "bucket_example" {
  bucket = "my-bucket-example"
}

resource "aws_instance" "coffee_with_bits_ec2_example" {
  ami           = "ami-0c55b159cbfafe1f0" # Linux
  instance_type = "t2.micro"

  tags = {
    Name = "CoffeeWithBitsEC2Example"
  }
}