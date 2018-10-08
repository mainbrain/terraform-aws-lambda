# function

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| description | Description of what your Lambda Function does. | string | `` | no |
| handler | The function entrypoint in your code. | string | - | yes |
| name | Name to be used on all the resources as identifier. | string | - | yes |
| package_hash | Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the package file specified with either filename. | string | `` | no |
| package_path | The path to the function's deployment package within the local filesystem. | string | - | yes |
| policy | IAM policy attached to the Lambda Function role. | string | `` | no |
| policy_arn | IAM policy ARN attached to the Lambda Function role. | string | `` | no |
| role | This governs both who / what can invoke your Lambda Function, as well as what resources our Lambda Function has access to. See Lambda Permission Model for more details. | string | `` | no |
| role_name | The name of the IAM role which will be created for the Lambda Function. | string | `` | no |
| runtime | The function runtime to use. (nodejs, nodejs4.3, nodejs6.10, nodejs8.10, java8, python2.7, python3.6, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, nodejs4.3-edge, go1.x) | string | - | yes |
| tags | A mapping of tags to assign to the object. | string | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | The Amazon Resource Name (ARN) identifying your Lambda Function. |
| invoke_arn | The ARN to be used for invoking Lambda Function from API Gateway - to be used in aws_api_gateway_integration's uri |
| last_modified | The date this Lambda Function was last modified. |
| package_hash | Base64-encoded representation of raw SHA-256 sum of the zip file, provided either via filename. |
| package_size | The size in bytes of the function package file. |
| qualified_arn | The Amazon Resource Name (ARN) identifying your Lambda Function Version. |
| role | The Amazon Resource Name (ARN) identifying the IAM role attached to the Lambda Function. |
| version | Latest published version of your Lambda Function. |
