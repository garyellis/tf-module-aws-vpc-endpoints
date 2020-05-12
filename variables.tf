variable "name" {
  description = "An identifying label applied to all resources"
  type        = string
}

variable "vpc_id" {
  description = "The target vpc id"
  type        = string
}

variable "security_group_ids" {
  description = "A list of security group IDs associated to the vpc interface endpoints."
  type        = list(string)
  default     = []
}

variable "subnet_ids" {
  description = "A list of subnet IDs associated to the vpc interface endpoints."
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "A map of tags applied to all taggable resources"
  type        = map(string)
  default     = {}
}

variable "private_dns_enabled" {
  description = "Enable private DNS"
  type        = bool
  default     = true
}

variable "enable_all_vpc_endpoints" {
  description = "Enable all interface vpc endpoint AWS services."
  type        = bool
  default     = false
}

variable "enable_apigw_vpc_endpoint" {
  description = "create execute-api vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_appmesh_envoy_vpc_endpoint" {
  description = "create appmesh.envoy.management vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_appstream_vpc_endpoint" {
  description = "create appstream vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_athena_vpc_endpoint" {
  description = "create athena vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_cloudformation_vpc_endpoint" {
  description = "create cloudformation vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_cloudtrail_vpc_endpoint" {
  description = "create cloudtrail vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_codebuild_vpc_endpoint" {
  description = "create codebuild vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_codecommit_vpc_endpoint" {
  description = "create codecommit vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_codepipeline_vpc_endpoint" {
  description = "create codecommit vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_config_vpc_endpoint" {
  description = "create aws config vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_ebs_vpc_endpoint" {
  description = "create ebs vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_ec2_vpc_endpoint" {
  description = "create ec2 vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_ec2_autoscaling_vpc_endpoint" {
  description = "create ec2 autoscaling vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_ec2messages_vpc_endpoint" {
  description = "create ec2messages vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_ecr_api_vpc_endpoint" {
  description = "create ecr vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_ecr_dkr_vpc_endpoint" {
  description = "create ecr.dkr vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_ecs_vpc_endpoint" {
  description = "create ecs vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_ecs_agent_vpc_endpoint" {
  description = "create ecs-agent vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_ecs_telemetry_vpc_endpoint" {
  description = "create ecs-telemetry vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_elasticloadbalancing_vpc_endpoint" {
  description = "create elasticloadbalancing vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_events_vpc_endpoint" {
  description = "create cloudwatch events vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_git_codecommit_vpc_endpoint" {
  description = "create git-codecommit vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_glue_vpc_endpoint" {
  description = "create glue vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_kinesis_firehose_vpc_endpoint" {
  description = "create kinesis-firehose vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_kinesis_streams_vpc_endpoint" {
  description = "create kinesis-streams vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_kms_vpc_endpoint" {
  description = "create kms vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_logs_vpc_endpoint" {
  description = "create cloudwatch logs vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_monitoring_vpc_endpoint" {
  description = "create cloudwatch monitoring vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_rekognition_vpc_endpoint" {
  description = "create rekognition vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_sagemaker_api_vpc_endpoint" {
  description = "create sagemaker api vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_sagemaker_notebook_vpc_endpoint" {
  description = "create sagemaker notebook vpc endpoints"
  type        = bool
  default     = false
}

variable "sagemaker_notebook_region" {
  description = "the current region"
  type        = string
  default     = "us-west-2"
}

variable "enable_sagemaker_runtime_vpc_endpoint" {
  description = "create sagemaker runtime vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_servicecatalog_vpc_endpoint" {
  description = "create servicecatalog vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_secretsmanager_vpc_endpoint" {
  description = "create sqs vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_sns_vpc_endpoint" {
  description = "create sns vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_sqs_vpc_endpoint" {
  description = "create sqs vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_ssm_vpc_endpoint" {
  description = "create ssm vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_ssmmessages_vpc_endpoint" {
  description = "create ssmmessages vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_sts_vpc_endpoint" {
  description = "create sts vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_storagegateway_vpc_endpoint" {
  description = "create storagegateway vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_transfer_vpc_endpoint" {
  description = "create transfer vpc endpoints"
  type        = bool
  default     = false
}

variable "enable_transferserver_vpc_endpoint" {
  description = "create transferserver vpc endpoints"
  type        = bool
  default     = false
}
