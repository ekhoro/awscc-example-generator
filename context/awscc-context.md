# AWSCC Documentation Generation Context

## Purpose
Generate high-quality, real-world examples for AWS Cloud Control (AWSCC) provider documentation that align with existing terraform-provider-awscc patterns.

## Example Patterns (Based on Existing AWSCC Examples)

**Simple Resource Example:**
```terraform
terraform {
  required_providers {
    awscc = {
      source  = "hashicorp/awscc"
      version = "~> 1.0"
    }
  }
}

provider "awscc" {
  region = "us-east-1"
}

resource "awscc_s3_bucket" "example" {
  bucket_name = "example-bucket"
  
  tags = [{
    key   = "Name"
    value = "My bucket"
  }]
}
```

**Complex Resource with Supporting Resources:**
```terraform
terraform {
  required_providers {
    awscc = {
      source  = "hashicorp/awscc"
      version = "~> 1.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "awscc" {
  region = "us-east-1"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_role" "example" {
  name = "example-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "lambda.amazonaws.com"
      }
    }]
  })
}

resource "awscc_lambda_function" "example" {
  function_name = "example"
  role          = aws_iam_role.example.arn
  runtime       = "python3.10"
  handler       = "index.handler"
  code = {
    zip_file = "def handler(event, context): return 'Hello World'"
  }
}
```

**Simple AWSCC-only Resource:**
```terraform
terraform {
  required_providers {
    awscc = {
      source  = "hashicorp/awscc"
      version = "~> 1.0"
    }
  }
}

provider "awscc" {
  region = "us-east-1"
}

resource "awscc_sns_topic" "example" {
  topic_name   = "example-topic"
  display_name = "Example SNS Topic"
  
  tags = [{
    key   = "Name"
    value = "Example SNS Topic"
  }]
}
```

## Key Principles
- **Simplicity over completeness** - Focus on demonstrating the resource
- **Direct configuration** - Use hardcoded values, avoid unnecessary abstraction
- **Resource-focused** - Examples should highlight the specific resource being documented
- **Minimal dependencies** - Only include supporting resources when essential
- **Consistent naming** - Use "example" as the primary resource name
- **Standard tagging** - Include basic tags when the resource supports them

## Workflow
1. **Verify resource schema** before creating examples
2. **Study existing patterns** for similar resources in terraform-provider-awscc
3. **Check CloudFormation documentation** for the resource to understand realistic attribute values and constraints
4. **Balance accuracy with consistency** - Use CloudFormation-informed values for technical attributes while maintaining "example" naming patterns
5. **Create focused examples** that demonstrate key resource attributes
6. **Test immediately:** Run `terraform init`, `validate`, and `plan` directly in example directory

## Generation Rules
- Generate only a single .tf file
- **Always include provider configuration with region** - AWSCC provider requires explicit configuration
- Include terraform/provider blocks when using both AWS and AWSCC providers
- No variables unless absolutely essential for the example
- No outputs unless they demonstrate important resource attributes
- Use direct hardcoded values (acceptable in examples)
- Keep configurations minimal and focused
- Avoid excessive comments - keep examples clean and approachable
- Use "example" as resource name consistently
- Include realistic attribute values based on CloudFormation documentation
- Add standard tags when the resource supports them
- When AWSCC resources require supporting resources, use the standard AWS provider for prerequisites
- **Default to us-east-1 region** unless the resource requires a specific region
