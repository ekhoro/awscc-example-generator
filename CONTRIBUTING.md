# Contributing to the AWSCC Ecosystem

## Generated a Working Example for a Resource Without Documentation?

If you successfully generate a working Terraform example for an AWSCC resource that lacks documentation or examples, consider contributing it to the official terraform-provider-awscc repository!

### How to Contribute Your Examples

1. **Verify your example works**
   ```bash
   terraform init
   terraform validate
   terraform plan
   ```

2. **Check if the resource needs examples**
   - Visit [terraform-provider-awscc documentation](https://registry.terraform.io/providers/hashicorp/awscc/latest/docs)
   - Look for resources with minimal or missing usage examples
   - Check the [terraform-provider-awscc repository](https://github.com/hashicorp/terraform-provider-awscc)

3. **Contribute your example**
   - Fork https://github.com/hashicorp/terraform-provider-awscc
   - Add your example to the appropriate documentation
   - Follow their contribution guidelines
   - Submit a pull request

### What Makes a Good Contribution

- **Working examples** that pass `terraform validate` and `plan`
- **Realistic configurations** based on actual use cases
- **Clear, minimal code** that demonstrates the resource
- **Proper documentation** explaining the example's purpose

### Why Contribute?

- **Help the community** - Your examples help other developers
- **Improve documentation** - Fill gaps in official docs
- **Open source impact** - Contribute to widely-used infrastructure tools
- **Professional recognition** - Build your open source profile

### Alternative: Missing Resources

If the AWSCC resource doesn't exist at all, you might:
- Check if `aws_service_resource` exists in [terraform-provider-aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- Consider contributing the missing resource implementation to terraform-provider-awscc

## Community Resources

- **terraform-provider-awscc**: https://github.com/hashicorp/terraform-provider-awscc
- **terraform-provider-aws**: https://github.com/hashicorp/terraform-provider-aws
- **AWS CloudFormation Docs**: https://docs.aws.amazon.com/cloudformation/
- **Terraform Provider Development**: https://developer.hashicorp.com/terraform/plugin
