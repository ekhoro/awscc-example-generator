resource "awscc_appconfig_application" "example" {
  name        = "example-application"
  description = "Example AppConfig application for managing configuration data"

  tags = [
    {
      key   = "Name"
      value = "Example AppConfig Application"
    },
    {
      key   = "Environment"
      value = "dev"
    }
  ]
}
