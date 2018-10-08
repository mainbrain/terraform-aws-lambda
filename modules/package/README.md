# package

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| include_paths | Additional files and directories which should be part of of the package .zip file within the local filesystem. | string | `<list>` | no |
| name | The name of the package .zip file when no path is specified. The path will result in ./.terraform/$(name).zip. | string | `` | no |
| output_path | The path of the package .zip file within the local filesystem. | string | `` | no |
| path | The file or directory which should be part of of the package .zip file within the local filesystem. | string | `` | no |

## Outputs

| Name | Description |
|------|-------------|
| base64sha256 | The base64-encoded SHA256 checksum of the package .zip file. |
| path | The path of the package .zip file within the local filesystem. |
| size | The size of the package .zip file. |
