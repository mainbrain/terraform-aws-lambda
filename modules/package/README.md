# package

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| directories | The directories which should be part of of the package .zip file within the local filesystem. | string | `<list>` | no |
| files | The files which should be part of of the package .zip file within the local filesystem. | string | `<list>` | no |
| name | The name of the package .zip file when no path is specified. The path will result in ./.terraform/$(name).zip. | string | `` | no |
| path | The path of the package .zip file within the local filesystem. | string | `` | no |

## Outputs

| Name | Description |
|------|-------------|
| base64sha256 | The base64-encoded SHA256 checksum of the package .zip file. |
| md5 | The MD5 checksum of the package .zip file. |
| path | The path of the package .zip file within the local filesystem. |
| sha1 | The SHA1 checksum of the package .zip file. |
| size | The size of the package .zip file. |

