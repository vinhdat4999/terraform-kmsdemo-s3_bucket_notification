variable "bucket_id" {
  description = "ID of the S3 bucket to configure notification for"
  type        = string
}

variable "queue_arn" {
  description = "ARN of the SQS queue to send notifications to"
  type        = string
}

variable "events" {
  description = "List of events to trigger the notification"
  type        = list(string)
}

variable "filter_suffix" {
  description = "Suffix filter for the notification"
  type        = string
}
