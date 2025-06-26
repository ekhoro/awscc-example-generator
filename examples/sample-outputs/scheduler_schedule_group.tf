resource "awscc_scheduler_schedule_group" "example" {
  name = "example-schedule-group"

  tags = [
    {
      key   = "Name"
      value = "Example Schedule Group"
    },
    {
      key   = "Environment"
      value = "dev"
    }
  ]
}
