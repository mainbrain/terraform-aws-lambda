data "archive_file" "directories" {
  count       = "${length(var.directories)}"
  type        = "zip"
  source_dir  = "${var.directories[count.index]}"
  output_path = "${local.output_path}"
}

data "archive_file" "files" {
  count       = "${length(var.files)}"
  type        = "zip"
  source_file = "${var.files[count.index]}"
  output_path = "${local.output_path}"
}
