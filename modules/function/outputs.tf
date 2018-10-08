output "arn" {
  value       = "${aws_lambda_function.lambda.arn}"
  description = "The Amazon Resource Name (ARN) identifying your Lambda Function."
}

output "invoke_arn" {
  value       = "${aws_lambda_function.lambda.invoke_arn}"
  description = "The ARN to be used for invoking Lambda Function from API Gateway - to be used in aws_api_gateway_integration's uri"
}

output "qualified_arn" {
  value       = "${aws_lambda_function.lambda.qualified_arn}"
  description = "The Amazon Resource Name (ARN) identifying your Lambda Function Version."
}

output "version" {
  value       = "${aws_lambda_function.lambda.version}"
  description = "Latest published version of your Lambda Function."
}

output "last_modified" {
  value       = "${aws_lambda_function.lambda.last_modified}"
  description = "The date this Lambda Function was last modified."
}

output "role" {
  value       = "${join(var.role, aws_iam_role.lambda.*.arn)}"
  description = "The Amazon Resource Name (ARN) identifying the IAM role attached to the Lambda Function."
}

output "package_size" {
  value       = "${aws_lambda_function.lambda.source_code_size}"
  description = "The size in bytes of the function package file."
}

output "package_hash" {
  value       = "${aws_lambda_function.lambda.source_code_hash}"
  description = "Base64-encoded representation of raw SHA-256 sum of the zip file, provided either via filename."
}
