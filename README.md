# tf-module-aws-vpc-endpoints
This terraform module create vpc interface endpoint resources. Interface endpoints for AWS services can be enabled individually as needed or all can be enabled.

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| enable\_all\_vpc\_endpoints | Enable all interface vpc endpoint AWS services. | `bool` | `false` | no |
| enable\_apigw\_vpc\_endpoint | create execute-api vpc endpoints | `bool` | `false` | no |
| enable\_appmesh\_envoy\_vpc\_endpoint | create appmesh.envoy.management vpc endpoints | `bool` | `false` | no |
| enable\_appstream\_vpc\_endpoint | create appstream vpc endpoints | `bool` | `false` | no |
| enable\_athena\_vpc\_endpoint | create athena vpc endpoints | `bool` | `false` | no |
| enable\_cloudformation\_vpc\_endpoint | create cloudformation vpc endpoints | `bool` | `false` | no |
| enable\_cloudtrail\_vpc\_endpoint | create cloudtrail vpc endpoints | `bool` | `false` | no |
| enable\_codebuild\_vpc\_endpoint | create codebuild vpc endpoints | `bool` | `false` | no |
| enable\_codecommit\_vpc\_endpoint | create codecommit vpc endpoints | `bool` | `false` | no |
| enable\_codepipeline\_vpc\_endpoint | create codecommit vpc endpoints | `bool` | `false` | no |
| enable\_config\_vpc\_endpoint | create aws config vpc endpoints | `bool` | `false` | no |
| enable\_ebs\_vpc\_endpoint | create ebs vpc endpoints | `bool` | `false` | no |
| enable\_ec2\_autoscaling\_vpc\_endpoint | create ec2 autoscaling vpc endpoints | `bool` | `false` | no |
| enable\_ec2\_vpc\_endpoint | create ec2 vpc endpoints | `bool` | `false` | no |
| enable\_ec2messages\_vpc\_endpoint | create ec2messages vpc endpoints | `bool` | `false` | no |
| enable\_ecr\_api\_vpc\_endpoint | create ecr vpc endpoints | `bool` | `false` | no |
| enable\_ecr\_dkr\_vpc\_endpoint | create ecr.dkr vpc endpoints | `bool` | `false` | no |
| enable\_ecs\_agent\_vpc\_endpoint | create ecs-agent vpc endpoints | `bool` | `false` | no |
| enable\_ecs\_telemetry\_vpc\_endpoint | create ecs-telemetry vpc endpoints | `bool` | `false` | no |
| enable\_ecs\_vpc\_endpoint | create ecs vpc endpoints | `bool` | `false` | no |
| enable\_elasticloadbalancing\_vpc\_endpoint | create elasticloadbalancing vpc endpoints | `bool` | `false` | no |
| enable\_email\_smtp\_vpc\_endpoint | create email smtp vpc endpoints | `bool` | `false` | no |
| enable\_events\_vpc\_endpoint | create cloudwatch events vpc endpoints | `bool` | `false` | no |
| enable\_git\_codecommit\_vpc\_endpoint | create git-codecommit vpc endpoints | `bool` | `false` | no |
| enable\_glue\_vpc\_endpoint | create glue vpc endpoints | `bool` | `false` | no |
| enable\_kinesis\_firehose\_vpc\_endpoint | create kinesis-firehose vpc endpoints | `bool` | `false` | no |
| enable\_kinesis\_streams\_vpc\_endpoint | create kinesis-streams vpc endpoints | `bool` | `false` | no |
| enable\_kms\_vpc\_endpoint | create kms vpc endpoints | `bool` | `false` | no |
| enable\_lambda\_vpc\_endpoint | create lambda vpc endpoints | `bool` | `false` | no |
| enable\_logs\_vpc\_endpoint | create cloudwatch logs vpc endpoints | `bool` | `false` | no |
| enable\_monitoring\_vpc\_endpoint | create cloudwatch monitoring vpc endpoints | `bool` | `false` | no |
| enable\_rekognition\_vpc\_endpoint | create rekognition vpc endpoints | `bool` | `false` | no |
| enable\_sagemaker\_api\_vpc\_endpoint | create sagemaker api vpc endpoints | `bool` | `false` | no |
| enable\_sagemaker\_notebook\_vpc\_endpoint | create sagemaker notebook vpc endpoints | `bool` | `false` | no |
| enable\_sagemaker\_runtime\_vpc\_endpoint | create sagemaker runtime vpc endpoints | `bool` | `false` | no |
| enable\_secretsmanager\_vpc\_endpoint | create sqs vpc endpoints | `bool` | `false` | no |
| enable\_servicecatalog\_vpc\_endpoint | create servicecatalog vpc endpoints | `bool` | `false` | no |
| enable\_sns\_vpc\_endpoint | create sns vpc endpoints | `bool` | `false` | no |
| enable\_sqs\_vpc\_endpoint | create sqs vpc endpoints | `bool` | `false` | no |
| enable\_ssm\_vpc\_endpoint | create ssm vpc endpoints | `bool` | `false` | no |
| enable\_ssmmessages\_vpc\_endpoint | create ssmmessages vpc endpoints | `bool` | `false` | no |
| enable\_states\_vpc\_endpoint | create states vpc endpoints for Step Functions | `bool` | `false` | no |
| enable\_storagegateway\_vpc\_endpoint | create storagegateway vpc endpoints | `bool` | `false` | no |
| enable\_sts\_vpc\_endpoint | create sts vpc endpoints | `bool` | `false` | no |
| enable\_transferserver\_vpc\_endpoint | create transferserver vpc endpoints | `bool` | `false` | no |
| name | An identifying label applied to all resources | `string` | n/a | yes |
| private\_dns\_enabled | Enable private DNS | `bool` | `true` | no |
| sagemaker\_notebook\_region | the current region | `string` | `"us-west-2"` | no |
| security\_group\_ids | A list of security group IDs associated to the vpc interface endpoints. | `list(string)` | `[]` | no |
| subnet\_ids | A list of subnet IDs associated to the vpc interface endpoints. | `list(string)` | `[]` | no |
| tags | A map of tags applied to all taggable resources | `map(string)` | `{}` | no |
| vpc\_id | The target vpc id | `string` | n/a | yes |

## Outputs

No output.

