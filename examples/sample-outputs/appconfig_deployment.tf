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

# Create AppConfig application
resource "aws_appconfig_application" "example" {
  name        = "example-app"
  description = "Example AppConfig application"

  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}

# Create AppConfig environment
resource "aws_appconfig_environment" "example" {
  name           = "dev"
  description    = "Development environment"
  application_id = aws_appconfig_application.example.id

  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}

# Create configuration profile
resource "aws_appconfig_configuration_profile" "example" {
  application_id = aws_appconfig_application.example.id
  name           = "example-config"
  description    = "Example configuration profile"
  location_uri   = "hosted"

  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}

# Create hosted configuration version
resource "aws_appconfig_hosted_configuration_version" "example" {
  application_id           = aws_appconfig_application.example.id
  configuration_profile_id = aws_appconfig_configuration_profile.example.configuration_profile_id
  description              = "Example configuration"
  content_type             = "application/json"

  content = jsonencode({
    feature_flag = true
    max_items    = 100
  })
}

# Basic AppConfig deployment
resource "awscc_appconfig_deployment" "example" {
  application_id            = aws_appconfig_application.example.id
  environment_id           = aws_appconfig_environment.example.environment_id
  configuration_profile_id = aws_appconfig_configuration_profile.example.configuration_profile_id
  configuration_version    = aws_appconfig_hosted_configuration_version.example.version_number
  deployment_strategy_id   = "AppConfig.AllAtOnce"
  description             = "Basic AppConfig deployment example"

  tags = [
    {
      key   = "Environment"
      value = "dev"
    },
    {
      key   = "ManagedBy"
      value = "Terraform"
    }
  ]
}
