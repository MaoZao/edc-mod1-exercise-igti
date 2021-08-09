resource "aws_s3_bucket_object" "codigo_spark" {
  bucket = aws_s3_bucket.dl.id
  key    = "emr-code/pyspark/job_spark_from_tf.py"
  acl    = "private"
  source = "../data/job_spark.py"
  etag   = filemd5("../data/job_spark.py")

}
