output "path" {
  value       = "${local.output_path}"
  description = "The path of the package .zip file within the local filesystem."
}

output "size" {
  value       = "${local.output_size}"
  description = "The size of the package .zip file."
}

output "md5" {
  value       = "${local.output_md5}"
  description = "The MD5 checksum of the package .zip file."
}

output "sha1" {
  value       = "${local.output_sha1}"
  description = "The SHA1 checksum of the package .zip file."
}

output "base64sha256" {
  value       = "${local.output_base64sha256}"
  description = "The base64-encoded SHA256 checksum of the package .zip file."
}
