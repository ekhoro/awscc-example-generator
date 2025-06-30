# Context Setup Guide

This guide shows you how to configure Amazon Q with the AWSCC example generation context for consistent, high-quality results.

## Quick Alternative

If you want to get started immediately without setting up context, check out [`quick-prompts.md`](../quick-prompts.md) for direct commands you can use right away.

## What is Context?

Context tells Amazon Q how to generate examples that follow specific patterns and best practices. Our context ensures generated Terraform files:
- Follow existing terraform-provider-awscc conventions
- Use realistic configurations
- Work out-of-the-box
- Are clean and minimal

## Setup Methods

### Method 1: Context Profiles (Recommended)

Amazon Q supports context profiles that let you save and reuse context configurations. This is the most convenient method for regular use.

#### Step 1: Create Context Profile

Start Amazon Q chat:
```bash
q chat
```

Create a new profile:
```
/profile create awscc-examples
```

#### Step 2: Add Context to Profile

With the profile created, you need to add the context file. Copy the entire content from [`context/awscc-context.md`](../context/awscc-context.md) and paste it into the Amazon Q chat.

The context will start with:
```
# AWSCC Documentation Generation Context

## Purpose
Generate high-quality, real-world examples for AWS Cloud Control (AWSCC) provider...
```

Amazon Q will automatically save this context to your active profile.

#### Step 3: Use Context Profile

In future sessions, switch to your profile:
```bash
q chat
```

Then set the profile:
```
/profile set awscc-examples
```

Now Amazon Q will automatically use the AWSCC context for generating examples.

#### Step 4: Generate Examples

With the context profile active, you can generate examples:
```
Generate usage example for awscc_scheduler_schedule_group
```

### Method 2: Manual Context Loading

If you prefer to load context manually each session:

#### Step 1: Start Amazon Q

```bash
q chat
```

#### Step 2: Load the Context

Copy the entire content from [`context/awscc-context.md`](../context/awscc-context.md) and paste it into the Amazon Q chat.

#### Step 3: Confirm Context is Loaded

After pasting the context, Amazon Q should respond with something like:
```
I understand. I'll use this AWSCC Documentation Generation Context to help you generate high-quality Terraform examples...
```

## Managing Context Profiles

### List Available Profiles

```
/profile list
```

### Switch to a Profile

```
/profile set profile-name
```

### Create New Profile

```
/profile create profile-name
```

### Delete Profile

```
/profile delete profile-name
```

### Rename Profile

```
/profile rename old-name new-name
```

### Get Help with Profile Commands

```
/profile help
```

## Using the Context

Once the context is loaded (either method), you can generate examples by asking:

```
Generate usage example for awscc_scheduler_schedule_group
```

Amazon Q will create a clean Terraform file following the established patterns.

## Example Generation Commands

Here are some example commands you can use:

```
Generate usage example for awscc_sns_topic
Generate usage example for awscc_secretsmanager_secret
Generate usage example for awscc_logs_log_group
Generate usage example for awscc_iam_role
```

## What to Expect

Amazon Q will generate:
- A single `.tf` file with the resource configuration
- Clean, minimal code following existing patterns
- Realistic attribute values based on CloudFormation documentation
- Standard tagging when appropriate
- "example" naming conventions

## Validation

After generating an example, you can validate it:

1. **Save the generated code** to a `.tf` file
2. **Initialize Terraform**:
   ```bash
   terraform init
   ```
3. **Validate syntax**:
   ```bash
   terraform validate
   ```
4. **Check the plan**:
   ```bash
   terraform plan
   ```

## Tips for Best Results

- **Use context profiles**: They're more convenient than manual loading
- **Be specific**: Ask for specific AWSCC resources by their full name
- **One resource at a time**: Focus on single resources for cleaner examples
- **Test generated code**: Always validate with Terraform before using

## Troubleshooting

### Profile not found
- Check available profiles: `/profile list`
- Create the profile: `/profile create profile-name`

### Context not working
- Make sure you copied the entire context file (manual method)
- Try switching to the correct profile: `/profile set awscc-examples`
- Reload the context by pasting it again

### Generated examples don't follow patterns
- Ensure you're using the correct profile with context loaded
- Be more specific in your request

### Terraform validation fails
- Check that you have the latest AWSCC provider
- Verify the resource name is correct

## Next Steps

You're ready to start generating AWSCC examples! Try generating a few examples and validate them with Terraform.

For more information about Amazon Q context profiles, see the [official documentation](https://docs.aws.amazon.com/amazonq/latest/qdeveloper-ug/command-line-context-profiles.html).
