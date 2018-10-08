locals {
  output_path         = "${var.path != "" ? var.path : "${path.cwd}/.terraform/${var.name}.zip"}"
  output_length       = "${length(concat(data.archive_file.directories.*.output_size, data.archive_file.files.*.output_size))}"
  output_size         = "${element(concat(data.archive_file.directories.*.output_size, data.archive_file.files.*.output_size), local.output_length - 1)}"
  output_md5          = "${element(concat(data.archive_file.directories.*.output_md5 , data.archive_file.files.*.output_md5 ), local.output_length - 1)}"
  output_sha1         = "${element(concat(data.archive_file.directories.*.output_md5 , data.archive_file.files.*.output_md5 ), local.output_length - 1)}"
  output_base64sha256 = "${element(concat(data.archive_file.directories.*.output_base64sha256 , data.archive_file.files.*.output_base64sha256 ), local.output_length - 1)}"
}
