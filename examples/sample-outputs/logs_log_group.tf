resource "awscc_logs_log_group" "example" {
  log_group_name    = "example-log-group"
  retention_in_days = 7

  tags = [
    {
      key   = "Name"
      value = "Example Log Group"
    },
    {
      key   = "Environment"
      value = "dev"
    }
  ]
}
