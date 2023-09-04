resource "aws_s3_bucket_notification" "bucket_notification" {
  bucket = var.bucket_id

  queue {
    queue_arn     = var.queue_arn
    events        = var.events
    filter_suffix = var.filter_suffix
  }
}
# resource "aws_s3_bucket_notification" "bucket_notification" {
#   bucket = module.s3_bucket.bucket_id

#   queue {
#     queue_arn     = module.sqs_queue.sqs_queue_arn
#     events        = ["s3:ObjectCreated:*"]
#     filter_suffix = ".txt"
#   }
# }