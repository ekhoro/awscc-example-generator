# Quick Prompts for Amazon Q

If you don't want to set up the full context, you can use these direct prompts with Amazon Q CLI.

## Basic Prompt Template

```bash
q chat "Generate a clean, working Terraform example for awscc_[RESOURCE_NAME] following terraform-provider-awscc patterns. Use 'example' naming, include realistic attributes, add standard tags, and keep it minimal and focused."
```

## Example Commands

### Simple Resources
```bash
# Secrets Manager Secret
q chat "Generate a clean, working Terraform example for awscc_secretsmanager_secret following terraform-provider-awscc patterns. Use 'example' naming, include realistic attributes, add standard tags, and keep it minimal and focused."

# SNS Topic
q chat "Generate a clean, working Terraform example for awscc_sns_topic following terraform-provider-awscc patterns. Use 'example' naming, include realistic attributes, add standard tags, and keep it minimal and focused."

# CloudWatch Log Group
q chat "Generate a clean, working Terraform example for awscc_logs_log_group following terraform-provider-awscc patterns. Use 'example' naming, include realistic attributes, add standard tags, and keep it minimal and focused."
```

### Complex Resources (May Need Supporting Resources)
```bash
# AppConfig Deployment
q chat "Generate a clean, working Terraform example for awscc_appconfig_deployment following terraform-provider-awscc patterns. Include necessary AWS provider resources for prerequisites. Use 'example' naming, include realistic attributes, add standard tags, and keep it minimal and focused."

# Lambda Function
q chat "Generate a clean, working Terraform example for awscc_lambda_function following terraform-provider-awscc patterns. Include necessary AWS provider resources for prerequisites like IAM role. Use 'example' naming, include realistic attributes, add standard tags, and keep it minimal and focused."
```

## Customizing the Prompt

You can modify the prompt for specific needs:

### For Production-Ready Examples
```bash
q chat "Generate a production-ready Terraform example for awscc_[RESOURCE_NAME] with security best practices, proper error handling, and comprehensive configuration following terraform-provider-awscc patterns."
```

### For Learning/Tutorial Examples
```bash
q chat "Generate a simple, educational Terraform example for awscc_[RESOURCE_NAME] with comments explaining each attribute, following terraform-provider-awscc patterns."
```

### For Specific Use Cases
```bash
q chat "Generate a Terraform example for awscc_[RESOURCE_NAME] configured for [SPECIFIC_USE_CASE] following terraform-provider-awscc patterns. Use 'example' naming and include realistic attributes."
```

## Tips for Better Results

1. **Be specific** about the resource name (use full `awscc_` prefix)
2. **Mention patterns** to get consistent formatting
3. **Ask for validation** by adding "and ensure it passes terraform validate"
4. **Request testing** by adding "include terraform init and plan commands to test"

## What If the Resource Doesn't Exist?

If Amazon Q tells you that an AWSCC resource doesn't exist in the Terraform registry, you have an opportunity to contribute!

**Steps:**
1. Verify the resource is missing from [terraform-provider-awscc docs](https://registry.terraform.io/providers/hashicorp/awscc/latest/docs)
2. Check if it's a valid CloudFormation resource
3. Consider contributing to https://github.com/hashicorp/terraform-provider-awscc
4. See [CONTRIBUTING.md](CONTRIBUTING.md) for detailed guidance

**Alternative:** Try the standard AWS provider (`aws_` instead of `awscc_`) which may have the resource you need.

## Validation

After generating any example, always test it:
```bash
terraform init
terraform validate
terraform plan
```

Or use our validation script:
```bash
./scripts/validate.sh your-example.tf
```
