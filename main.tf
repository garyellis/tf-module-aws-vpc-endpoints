#### vpc private link services

#### aws cloudformation
data "aws_vpc_endpoint_service" "cloudformation" {
  count = (var.enable_cloudformation_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "cloudformation"
}

resource "aws_vpc_endpoint" "cloudformation" {
  count = (var.enable_cloudformation_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.cloudformation[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-cloudformation", var.name)), var.tags)
}

#### aws cloudtrail
data "aws_vpc_endpoint_service" "cloudtrail" {
  count = (var.enable_cloudtrail_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "cloudtrail"
}

resource "aws_vpc_endpoint" "cloudtrail" {
  count = (var.enable_cloudtrail_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.cloudtrail[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-cloudtrail", var.name)), var.tags)
}

#### codebuild
data "aws_vpc_endpoint_service" "codebuild" {
  count = (var.enable_codebuild_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "codebuild"
}

resource "aws_vpc_endpoint" "codebuild" {
  count = (var.enable_codebuild_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.codebuild[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-codebuild", var.name)), var.tags)
}

#### code commit
data "aws_vpc_endpoint_service" "codecommit" {
  count = (var.enable_codecommit_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "codecommit"
}

resource "aws_vpc_endpoint" "codecommit" {
  count = (var.enable_codecommit_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.codecommit[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-config", var.name)), var.tags)
}

#### code pipeline
data "aws_vpc_endpoint_service" "codepipeline" {
  count = (var.enable_codepipeline_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "codepipeline"
}

resource "aws_vpc_endpoint" "codepipeline" {
  count = (var.enable_codepipeline_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.codepipeline[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-codepipeline", var.name)), var.tags)
}

#### aws config
data "aws_vpc_endpoint_service" "config" {
  count = (var.enable_config_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "config"
}

resource "aws_vpc_endpoint" "config" {
  count = (var.enable_config_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.config[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-config", var.name)), var.tags)
}

#### ec2
data "aws_vpc_endpoint_service" "ec2" {
  count = (var.enable_ec2_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "ec2"
}

resource "aws_vpc_endpoint" "ec2" {
  count = (var.enable_ec2_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.ec2[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-ec2", var.name)), var.tags)
}

#### ec2messages
data "aws_vpc_endpoint_service" "ec2messages" {
  count = (var.enable_ec2messages_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "ec2messages"
}

resource "aws_vpc_endpoint" "ec2messages" {
  count = (var.enable_ec2messages_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.ec2messages[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-ec2messages", var.name)), var.tags)
}

#### ecr dkr
data "aws_vpc_endpoint_service" "ecr_dkr" {
  count = (var.enable_ecr_dkr_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "ecr.dkr"
}

resource "aws_vpc_endpoint" "ecr_dkr" {
  count = (var.enable_ecr_dkr_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.ecr_dkr[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-ecr-dkr", var.name)), var.tags)
}

#### ecr
data "aws_vpc_endpoint_service" "ecr_api" {
  count = (var.enable_ecr_api_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "ecr.api"
}

resource "aws_vpc_endpoint" "ecr_api" {
  count = (var.enable_ecr_api_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.ecr_api[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-ecr-api", var.name)), var.tags)
}

#### ecs
data "aws_vpc_endpoint_service" "ecs" {
  count = (var.enable_ecs_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "ecs"
}

resource "aws_vpc_endpoint" "ecs" {
  count = (var.enable_ecs_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.ecs[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-ecs", var.name)), var.tags)
}

#### ecs agent
data "aws_vpc_endpoint_service" "ecs_agent" {
  count = (var.enable_ecs_agent_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "ecs-agent"
}

resource "aws_vpc_endpoint" "ecs_agent" {
  count = (var.enable_ecs_agent_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.ecs_agent[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-ecs-agent", var.name)), var.tags)
}

#### ecs telemetry
data "aws_vpc_endpoint_service" "ecs_telemetry" {
  count = (var.enable_ecs_telemetry_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "ecs-telemetry"
}

resource "aws_vpc_endpoint" "ecs_telemetry" {
  count = (var.enable_ecs_telemetry_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.ecs_telemetry[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-ecs-telemetry", var.name)), var.tags)
}

#### elastic loadbalancing
data "aws_vpc_endpoint_service" "elasticloadbalancing" {
  count = (var.enable_elasticloadbalancing_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "elasticloadbalancing"
}

resource "aws_vpc_endpoint" "elasticloadbalancing" {
  count = (var.enable_elasticloadbalancing_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.elasticloadbalancing[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-elasticloadbalancing", var.name)), var.tags)
}

#### cloudwatch events
data "aws_vpc_endpoint_service" "events" {
  count = (var.enable_events_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "events"
}

resource "aws_vpc_endpoint" "events" {
  count = (var.enable_events_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.events[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-events", var.name)), var.tags)
}

#### git code commit
data "aws_vpc_endpoint_service" "git_codecommit" {
  count = (var.enable_git_codecommit_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "git-codecommit"
}

resource "aws_vpc_endpoint" "git_codecommit" {
  count = (var.enable_git_codecommit_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.git_codecommit[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-git-codecommit", var.name)), var.tags)
}

#### glue
data "aws_vpc_endpoint_service" "glue" {
  count = (var.enable_glue_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "glue"
}

resource "aws_vpc_endpoint" "glue" {
  count = (var.enable_glue_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.glue[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-glue", var.name)), var.tags)
}

#### kinesis firehose
data "aws_vpc_endpoint_service" "kinesis_firehose" {
  count = (var.enable_kinesis_firehose_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "kinesis-firehose"
}

resource "aws_vpc_endpoint" "kinesis_firehose" {
  count = (var.enable_kinesis_firehose_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.kinesis_firehose[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-kinesis-firehose", var.name)), var.tags)
}

#### kinesis streams
data "aws_vpc_endpoint_service" "kinesis_streams" {
  count = (var.enable_kinesis_streams_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "kinesis-streams"
}

resource "aws_vpc_endpoint" "kinesis_streams" {
  count = (var.enable_kinesis_streams_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.kinesis_streams[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-kinesis-streams", var.name)), var.tags)
}

#### cloudwatch logs
data "aws_vpc_endpoint_service" "logs" {
  count = (var.enable_logs_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "logs"
}

resource "aws_vpc_endpoint" "logs" {
  count = (var.enable_logs_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.logs[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-logs", var.name)), var.tags)
}

#### cloudwatch monitoring
data "aws_vpc_endpoint_service" "monitoring" {
  count = (var.enable_monitoring_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "monitoring"
}

resource "aws_vpc_endpoint" "monitoring" {
  count = (var.enable_monitoring_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.monitoring[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-monitoring", var.name)), var.tags)
}

#### sagemaker api
data "aws_vpc_endpoint_service" "sagemaker_api" {
  count = (var.enable_monitoring_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "sagemaker.api"
}

resource "aws_vpc_endpoint" "sagemaker_api" {
  count = (var.enable_sagemaker_api_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.sagemaker_api[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-sagemaker-api", var.name)), var.tags)
}

#### sagemaker notebooks
data "aws_vpc_endpoint_service" "sagemaker_notebook" {
  count = (var.enable_sagemaker_notebook_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service_name = "aws.sagemaker.${var.sagemaker_notebook_region}.notebook"
}

resource "aws_vpc_endpoint" "sagemaker_notebook" {
  count = (var.enable_sagemaker_notebook_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.sagemaker_notebook[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-sagemaker-notebook", var.name)), var.tags)
}

#### sagemaker runtime
data "aws_vpc_endpoint_service" "sagemaker_runtime" {
  count = (var.enable_sagemaker_runtime_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "sagemaker.runtime"
}

resource "aws_vpc_endpoint" "sagemaker_runtime" {
  count = (var.enable_sagemaker_runtime_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.sagemaker_runtime[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-sagemaker-runtime", var.name)), var.tags)
}

#### secrets manager
data "aws_vpc_endpoint_service" "secretsmanager" {
  count = (var.enable_secretsmanager_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "secretsmanager"
}

resource "aws_vpc_endpoint" "secretsmanager" {
  count = (var.enable_secretsmanager_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.secretsmanager[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-secretsmanager", var.name)), var.tags)
}

#### sns
data "aws_vpc_endpoint_service" "sns" {
  count = (var.enable_sns_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "sns"
}

resource "aws_vpc_endpoint" "sns" {
  count = (var.enable_sns_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.sns[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-sns", var.name)), var.tags)
}

#### sqs
data "aws_vpc_endpoint_service" "sqs" {
  count = (var.enable_sqs_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "sqs"
}

resource "aws_vpc_endpoint" "sqs" {
  count = (var.enable_sqs_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.sqs[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-sqs", var.name)), var.tags)
}

#### ssm
data "aws_vpc_endpoint_service" "ssm" {
  count = (var.enable_ssm_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "ssm"
}

resource "aws_vpc_endpoint" "ssm" {
  count = (var.enable_ssm_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.ssm[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-ssm", var.name)), var.tags)
}

#### ssmmessages
data "aws_vpc_endpoint_service" "ssmmessages" {
  count = (var.enable_ssmmessages_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "ssmmessages"
}

resource "aws_vpc_endpoint" "ssmmessages" {
  count = (var.enable_ssmmessages_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.ssmmessages[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-ssmmessages", var.name)), var.tags)
}

#### sts
data "aws_vpc_endpoint_service" "sts" {
  count = (var.enable_sts_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "sts"
}

resource "aws_vpc_endpoint" "sts" {
  count = (var.enable_sts_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.sts[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-sts", var.name)), var.tags)
}

#### transfer server
data "aws_vpc_endpoint_service" "transferserver" {
  count = (var.enable_transferserver_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "transfer.server"
}

resource "aws_vpc_endpoint" "transferserver" {
  count = (var.enable_transferserver_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id              = var.vpc_id
  service_name        = data.aws_vpc_endpoint_service.transferserver[0].service_name
  vpc_endpoint_type   = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = var.subnet_ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-transferserver", var.name)), var.tags)
}
