# AWSCC Example Generator

Generate high-quality Terraform examples for AWS Cloud Control (AWSCC) provider resources using Amazon Q.

## What This Does

This repository helps you generate clean, working Terraform examples for AWSCC resources that:
- Follow existing terraform-provider-awscc patterns
- Use realistic configurations based on CloudFormation documentation
- Work out-of-the-box with minimal setup
- Are ready for documentation or production use
- Focus on resources that don't already have comprehensive examples

## Quick Start

### Option 1: Direct Prompt (Fastest)
```bash
q chat "Generate a clean, working Terraform example for awscc_[resource_name] following terraform-provider-awscc patterns. Use 'example' naming, include realistic attributes, add standard tags, and keep it minimal and focused."
```

Example:
```bash
q chat "Generate a clean, working Terraform example for awscc_secretsmanager_secret following terraform-provider-awscc patterns. Use 'example' naming, include realistic attributes, add standard tags, and keep it minimal and focused."
```

### Option 2: Full Context Setup (More Consistent)
1. **Install Amazon Q CLI** - [Installation Guide](setup/install-amazon-q.md)
2. **Set up Context** - [Context Setup Guide](setup/context-setup.md)
3. **Generate Examples** - Use the provided context to generate Terraform files

## What You'll Generate

Single Terraform files (`.tf`) with clean resource configurations like:

```terraform
resource "awscc_sns_topic" "example" {
  topic_name   = "example-topic"
  display_name = "Example SNS Topic"

  tags = [
    {
      key   = "Name"
      value = "Example SNS Topic"
    },
    {
      key   = "Environment"
      value = "dev"
    }
  ]
}
```

## Repository Structure

- `setup/` - Installation and configuration guides
- `context/` - Amazon Q context file for generating examples
- `examples/` - Sample generated Terraform files
- `scripts/` - Helper scripts for validation
- `quick-prompts.md` - Direct prompts for immediate use without context setup

## Getting Started

Follow the setup guides in order:
1. [Install Amazon Q](setup/install-amazon-q.md)
2. [Configure Context](setup/context-setup.md)
3. Start generating examples!

## Example Generation Process

1. Choose an AWSCC resource (e.g., `awscc_scheduler_schedule_group`)
2. Ask Amazon Q: "Generate usage example for awscc_[resource_name]"
3. Amazon Q will create a clean Terraform file following best practices
4. Test with `terraform init`, `validate`, and `plan`

## Support

- Check existing examples in `examples/sample-outputs/`
- Use the validation script in `scripts/validate.sh`
- Refer to [terraform-provider-awscc documentation](https://registry.terraform.io/providers/hashicorp/awscc/latest/docs)
- **Generated a working example?** Consider contributing it to [terraform-provider-awscc](https://github.com/hashicorp/terraform-provider-awscc) - see [CONTRIBUTING.md](CONTRIBUTING.md)
