resource "aws_lambda_function" "lambda" {
  function_name = "${var.name}"
  description   = "${var.description}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"

  role = "${join(var.role, aws_iam_role.lambda.*.arn)}"

  filename         = "${var.package_path}"
  source_code_hash = "${local.package_hash}"

  tags = "${merge(var.tags, map("Name", format("%s", var.name)))}"
}
