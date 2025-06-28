# Contributing to the AWSCC Ecosystem

## Found a Missing Resource?

If you try to generate an example for an AWSCC resource that doesn't exist in the Terraform registry, you have an opportunity to contribute to the open source community!

### Steps to Contribute Missing Resources

1. **Verify the resource is missing**
   - Check the [terraform-provider-awscc documentation](https://registry.terraform.io/providers/hashicorp/awscc/latest/docs)
   - Search for the resource name (e.g., `awscc_service_resource`)

2. **Check if it's a valid CloudFormation resource**
   - Look up the resource in [AWS CloudFormation documentation](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html)
   - Ensure it's supported by AWS Cloud Control API

3. **Contribute to terraform-provider-awscc**
   - Visit: https://github.com/hashicorp/terraform-provider-awscc
   - Check existing issues and pull requests
   - Follow their contribution guidelines
   - Submit a feature request or pull request

### Why Contribute?

- **Help the community** - Make resources available for everyone
- **Learn CloudFormation** - Understand AWS service schemas better  
- **Open source impact** - Contribute to widely-used infrastructure tools
- **Professional growth** - Build experience with Terraform providers

### What You'll Need

- Understanding of the AWS service and its CloudFormation resource
- Basic Go programming knowledge (for implementation)
- Terraform provider development experience (helpful but not required)

### Alternative: Use AWS Provider

While waiting for AWSCC support, you might be able to use the standard AWS provider:
- Check if `aws_service_resource` exists in [terraform-provider-aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- AWS provider often has more mature resource coverage

## Contributing to This Repository

Found ways to improve this example generator? We welcome contributions!

### Ideas for Contributions

- Additional quick prompt templates
- More sample examples for complex resources
- Improved validation scripts
- Better documentation
- Support for additional use cases

### How to Contribute

1. Fork this repository
2. Create a feature branch
3. Make your improvements
4. Test thoroughly
5. Submit a pull request

## Community Resources

- **terraform-provider-awscc**: https://github.com/hashicorp/terraform-provider-awscc
- **terraform-provider-aws**: https://github.com/hashicorp/terraform-provider-aws
- **AWS CloudFormation Docs**: https://docs.aws.amazon.com/cloudformation/
- **Terraform Provider Development**: https://developer.hashicorp.com/terraform/plugin
