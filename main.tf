#### vpc private link services

#### aws API Gateway
data "aws_vpc_endpoint_service" "apigw" {
  count = (var.enable_apigw_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "execute-api"
}

data "aws_subnet_ids" "apigw" {
  count = (var.enable_apigw_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.apigw[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "apigw" {
  count = (var.enable_apigw_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.apigw[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.apigw[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-api-gateway", var.name)), var.tags)
}

#### aws appmesh_envoy
data "aws_vpc_endpoint_service" "appmesh_envoy" {
  count = (var.enable_appmesh_envoy_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "appmesh-envoy-management"
}

data "aws_subnet_ids" "appmesh_envoy" {
  count = (var.enable_appmesh_envoy_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.appmesh_envoy[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "appmesh_envoy" {
  count = (var.enable_appmesh_envoy_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.appmesh_envoy[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.appmesh_envoy[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-appmesh-envoy", var.name)), var.tags)
}

#### aws appstream
data "aws_vpc_endpoint_service" "appstream" {
  count = (var.enable_appstream_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "appstream"
}

data "aws_subnet_ids" "appstream" {
  count = (var.enable_appstream_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.appstream[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "appstream" {
  count = (var.enable_appstream_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.appstream[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.appstream[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-appstream", var.name)), var.tags)
}

#### aws athena
data "aws_vpc_endpoint_service" "athena" {
  count = (var.enable_athena_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "athena"
}

data "aws_subnet_ids" "athena" {
  count = (var.enable_athena_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.athena[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "athena" {
  count = (var.enable_athena_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.athena[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.athena[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-athena", var.name)), var.tags)
}

#### aws cloudformation
data "aws_vpc_endpoint_service" "cloudformation" {
  count = (var.enable_cloudformation_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "cloudformation"
}

data "aws_subnet_ids" "cloudformation" {
  count = (var.enable_cloudformation_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.cloudformation[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "cloudformation" {
  count = (var.enable_cloudformation_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.cloudformation[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.cloudformation[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-cloudformation", var.name)), var.tags)
}

#### aws cloudtrail
data "aws_vpc_endpoint_service" "cloudtrail" {
  count = (var.enable_cloudtrail_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "cloudtrail"
}

data "aws_subnet_ids" "cloudtrail" {
  count = (var.enable_cloudtrail_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.cloudtrail[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "cloudtrail" {
  count = (var.enable_cloudtrail_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.cloudtrail[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.cloudtrail[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-cloudtrail", var.name)), var.tags)
}

#### codebuild
data "aws_vpc_endpoint_service" "codebuild" {
  count = (var.enable_codebuild_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "codebuild"
}

data "aws_subnet_ids" "codebuild" {
  count = (var.enable_codebuild_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.codebuild[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "codebuild" {
  count = (var.enable_codebuild_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.codebuild[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.codebuild[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-codebuild", var.name)), var.tags)
}

#### code commit
data "aws_vpc_endpoint_service" "codecommit" {
  count = (var.enable_codecommit_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "codecommit"
}

data "aws_subnet_ids" "codecommit" {
  count = (var.enable_codecommit_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.codecommit[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "codecommit" {
  count = (var.enable_codecommit_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.codecommit[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.codecommit[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-config", var.name)), var.tags)
}

#### code pipeline
data "aws_vpc_endpoint_service" "codepipeline" {
  count = (var.enable_codepipeline_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "codepipeline"
}

data "aws_subnet_ids" "codepipeline" {
  count = (var.enable_codepipeline_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.codepipeline[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "codepipeline" {
  count = (var.enable_codepipeline_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.codepipeline[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.codepipeline[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-codepipeline", var.name)), var.tags)
}

#### aws config
data "aws_vpc_endpoint_service" "config" {
  count = (var.enable_config_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "config"
}

data "aws_subnet_ids" "config" {
  count = (var.enable_config_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.config[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "config" {
  count = (var.enable_config_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.config[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.config[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-config", var.name)), var.tags)
}

#### ebs
data "aws_vpc_endpoint_service" "ebs" {
  count = (var.enable_ebs_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "ebs"
}

data "aws_subnet_ids" "ebs" {
  count = (var.enable_ebs_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.ebs[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "ebs" {
  count = (var.enable_ebs_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.ebs[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.ebs[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-ebs", var.name)), var.tags)
}

#### ec2
data "aws_vpc_endpoint_service" "ec2" {
  count = (var.enable_ec2_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "ec2"
}

data "aws_subnet_ids" "ec2" {
  count = (var.enable_ec2_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.ec2[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "ec2" {
  count = (var.enable_ec2_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.ec2[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.ec2[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-ec2", var.name)), var.tags)
}

#### ec2 autoscaling
data "aws_vpc_endpoint_service" "ec2_autoscaling" {
  count = (var.enable_ec2_autoscaling_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "autoscaling"
}

data "aws_subnet_ids" "ec2_autoscaling" {
  count = (var.enable_ec2_autoscaling_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.ec2_autoscaling[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "ec2_autoscaling" {
  count = (var.enable_ec2_autoscaling_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.ec2_autoscaling[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.ec2_autoscaling[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-ec2-autoscaling", var.name)), var.tags)
}

#### ec2messages
data "aws_vpc_endpoint_service" "ec2messages" {
  count = (var.enable_ec2messages_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "ec2messages"
}

data "aws_subnet_ids" "ec2messages" {
  count = (var.enable_ec2messages_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.ec2messages[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "ec2messages" {
  count = (var.enable_ec2messages_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.ec2messages[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.ec2messages[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-ec2messages", var.name)), var.tags)
}

#### ecr api
data "aws_vpc_endpoint_service" "ecr_api" {
  count = (var.enable_ecr_api_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "ecr.api"
}

data "aws_subnet_ids" "ecr_api" {
  count = (var.enable_ecr_api_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.ecr_api[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "ecr_api" {
  count = (var.enable_ecr_api_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.ecr_api[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.ecr_api[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-ecr-api", var.name)), var.tags)
}

#### ecr dkr
data "aws_vpc_endpoint_service" "ecr_dkr" {
  count = (var.enable_ecr_dkr_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "ecr.dkr"
}

data "aws_subnet_ids" "ecr_dkr" {
  count = (var.enable_ecr_dkr_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.ecr_dkr[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "ecr_dkr" {
  count = (var.enable_ecr_dkr_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.ecr_dkr[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.ecr_dkr[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-ecr-dkr", var.name)), var.tags)
}

#### ecs
data "aws_vpc_endpoint_service" "ecs" {
  count = (var.enable_ecs_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "ecs"
}

data "aws_subnet_ids" "ecs" {
  count = (var.enable_ecs_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.ecs[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "ecs" {
  count = (var.enable_ecs_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.ecs[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.ecs[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-ecs", var.name)), var.tags)
}

#### ecs agent
data "aws_vpc_endpoint_service" "ecs_agent" {
  count = (var.enable_ecs_agent_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "ecs-agent"
}

data "aws_subnet_ids" "ecs_agent" {
  count = (var.enable_ecs_agent_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.ecs_agent[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "ecs_agent" {
  count = (var.enable_ecs_agent_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.ecs_agent[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.ecs_agent[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-ecs-agent", var.name)), var.tags)
}

#### ecs telemetry
data "aws_vpc_endpoint_service" "ecs_telemetry" {
  count = (var.enable_ecs_telemetry_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "ecs-telemetry"
}

data "aws_subnet_ids" "ecs_telemetry" {
  count = (var.enable_ecs_telemetry_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.ecs_telemetry[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "ecs_telemetry" {
  count = (var.enable_ecs_telemetry_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.ecs_telemetry[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.ecs_telemetry[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-ecs-telemetry", var.name)), var.tags)
}

#### elastic loadbalancing
data "aws_vpc_endpoint_service" "elasticloadbalancing" {
  count = (var.enable_elasticloadbalancing_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "elasticloadbalancing"
}

data "aws_subnet_ids" "elasticloadbalancing" {
  count = (var.enable_elasticloadbalancing_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.elasticloadbalancing[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "elasticloadbalancing" {
  count = (var.enable_elasticloadbalancing_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.elasticloadbalancing[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.elasticloadbalancing[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-elasticloadbalancing", var.name)), var.tags)
}

#### cloudwatch events
data "aws_vpc_endpoint_service" "events" {
  count = (var.enable_events_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "events"
}

data "aws_subnet_ids" "events" {
  count = (var.enable_events_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.events[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "events" {
  count = (var.enable_events_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.events[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.events[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-events", var.name)), var.tags)
}

#### git code commit
data "aws_vpc_endpoint_service" "git_codecommit" {
  count = (var.enable_git_codecommit_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "git-codecommit"
}

data "aws_subnet_ids" "git_codecommit" {
  count = (var.enable_git_codecommit_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.git_codecommit[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "git_codecommit" {
  count = (var.enable_git_codecommit_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.git_codecommit[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.git_codecommit[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-git-codecommit", var.name)), var.tags)
}

#### glue
data "aws_vpc_endpoint_service" "glue" {
  count = (var.enable_glue_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "glue"
}

data "aws_subnet_ids" "glue" {
  count = (var.enable_glue_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.glue[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "glue" {
  count = (var.enable_glue_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.glue[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.glue[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-glue", var.name)), var.tags)
}

#### kinesis firehose
data "aws_vpc_endpoint_service" "kinesis_firehose" {
  count = (var.enable_kinesis_firehose_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "kinesis-firehose"
}

data "aws_subnet_ids" "kinesis_firehose" {
  count = (var.enable_kinesis_firehose_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.kinesis_firehose[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "kinesis_firehose" {
  count = (var.enable_kinesis_firehose_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.kinesis_firehose[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.kinesis_firehose[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-kinesis-firehose", var.name)), var.tags)
}

#### kinesis streams
data "aws_vpc_endpoint_service" "kinesis_streams" {
  count = (var.enable_kinesis_streams_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "kinesis-streams"
}

data "aws_subnet_ids" "kinesis_streams" {
  count = (var.enable_kinesis_streams_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.kinesis_streams[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "kinesis_streams" {
  count = (var.enable_kinesis_streams_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.kinesis_streams[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.kinesis_streams[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-kinesis-streams", var.name)), var.tags)
}

#### kms
data "aws_vpc_endpoint_service" "kms" {
  count = (var.enable_kms_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "kms"
}

data "aws_subnet_ids" "kms" {
  count = (var.enable_kms_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.kms[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "kms" {
  count = (var.enable_kms_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.kms[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.kms[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-kms", var.name)), var.tags)
}

#### cloudwatch logs
data "aws_vpc_endpoint_service" "logs" {
  count = (var.enable_logs_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "logs"
}

data "aws_subnet_ids" "logs" {
  count = (var.enable_logs_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.logs[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "logs" {
  count = (var.enable_logs_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.logs[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.logs[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-logs", var.name)), var.tags)
}

#### cloudwatch monitoring
data "aws_vpc_endpoint_service" "monitoring" {
  count = (var.enable_monitoring_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "monitoring"
}

data "aws_subnet_ids" "monitoring" {
  count = (var.enable_monitoring_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.monitoring[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "monitoring" {
  count = (var.enable_monitoring_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.monitoring[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.monitoring[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-monitoring", var.name)), var.tags)
}

#### rekognition
data "aws_vpc_endpoint_service" "rekognition" {
  count = (var.enable_rekognition_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "rekognition"
}

data "aws_subnet_ids" "rekognition" {
  count = (var.enable_rekognition_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.rekognition[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "rekognition" {
  count = (var.enable_rekognition_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.rekognition[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.rekognition[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-rekognition", var.name)), var.tags)
}

#### sagemaker api
data "aws_vpc_endpoint_service" "sagemaker_api" {
  count = (var.enable_sagemaker_api_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "sagemaker.api"
}

data "aws_subnet_ids" "sagemaker_api" {
  count = (var.enable_sagemaker_api_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.sagemaker_api[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "sagemaker_api" {
  count = (var.enable_sagemaker_api_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.sagemaker_api[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.sagemaker_api[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-sagemaker-api", var.name)), var.tags)
}

#### sagemaker notebooks
data "aws_vpc_endpoint_service" "sagemaker_notebook" {
  count = (var.enable_sagemaker_notebook_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service_name = "aws.sagemaker.${var.sagemaker_notebook_region}.notebook"
}

data "aws_subnet_ids" "sagemaker_notebook" {
  count = (var.enable_sagemaker_notebook_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.sagemaker_notebook[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "sagemaker_notebook" {
  count = (var.enable_sagemaker_notebook_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.sagemaker_notebook[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.sagemaker_notebook[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-sagemaker-notebook", var.name)), var.tags)
}

#### sagemaker runtime
data "aws_vpc_endpoint_service" "sagemaker_runtime" {
  count = (var.enable_sagemaker_runtime_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "sagemaker.runtime"
}

data "aws_subnet_ids" "sagemaker_runtime" {
  count = (var.enable_sagemaker_runtime_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.sagemaker_runtime[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "sagemaker_runtime" {
  count = (var.enable_sagemaker_runtime_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.sagemaker_runtime[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.sagemaker_runtime[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-sagemaker-runtime", var.name)), var.tags)
}

#### secrets manager
data "aws_vpc_endpoint_service" "secretsmanager" {
  count = (var.enable_secretsmanager_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "secretsmanager"
}

data "aws_subnet_ids" "secretsmanager" {
  count = (var.enable_secretsmanager_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.secretsmanager[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "secretsmanager" {
  count = (var.enable_secretsmanager_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.secretsmanager[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.secretsmanager[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-secretsmanager", var.name)), var.tags)
}

#### servicecatalog
data "aws_vpc_endpoint_service" "servicecatalog" {
  count = (var.enable_servicecatalog_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "servicecatalog"
}

data "aws_subnet_ids" "servicecatalog" {
  count = (var.enable_servicecatalog_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.servicecatalog[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "servicecatalog" {
  count = (var.enable_servicecatalog_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.servicecatalog[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.servicecatalog[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-servicecatalog", var.name)), var.tags)
}

#### sns
data "aws_vpc_endpoint_service" "sns" {
  count = (var.enable_sns_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "sns"
}

data "aws_subnet_ids" "sns" {
  count = (var.enable_sns_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.sns[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "sns" {
  count = (var.enable_sns_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.sns[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.sns[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-sns", var.name)), var.tags)
}

#### sqs
data "aws_vpc_endpoint_service" "sqs" {
  count = (var.enable_sqs_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "sqs"
}

data "aws_subnet_ids" "sqs" {
  count = (var.enable_sqs_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.sqs[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "sqs" {
  count = (var.enable_sqs_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.sqs[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.sqs[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-sqs", var.name)), var.tags)
}

#### ssm
data "aws_vpc_endpoint_service" "ssm" {
  count = (var.enable_ssm_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "ssm"
}

data "aws_subnet_ids" "ssm" {
  count = (var.enable_ssm_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.ssm[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "ssm" {
  count = (var.enable_ssm_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.ssm[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.ssm[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-ssm", var.name)), var.tags)
}

#### ssmmessages
data "aws_vpc_endpoint_service" "ssmmessages" {
  count = (var.enable_ssmmessages_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "ssmmessages"
}

data "aws_subnet_ids" "ssmmessages" {
  count = (var.enable_ssmmessages_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.ssmmessages[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "ssmmessages" {
  count = (var.enable_ssmmessages_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.ssmmessages[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.ssmmessages[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-ssmmessages", var.name)), var.tags)
}

#### storagegateway
data "aws_vpc_endpoint_service" "storagegateway" {
  count = (var.enable_storagegateway_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "storagegateway"
}

data "aws_subnet_ids" "storagegateway" {
  count = (var.enable_storagegateway_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.storagegateway[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "storagegateway" {
  count = (var.enable_storagegateway_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.storagegateway[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.storagegateway[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-storage-gateway", var.name)), var.tags)
}

#### sts
data "aws_vpc_endpoint_service" "sts" {
  count = (var.enable_sts_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "sts"
}

data "aws_subnet_ids" "sts" {
  count = (var.enable_sts_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.sts[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "sts" {
  count = (var.enable_sts_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.sts[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.sts[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-sts", var.name)), var.tags)
}

#### transfer 
data "aws_vpc_endpoint_service" "transfer" {
  count = (var.enable_transfer_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "transfer"
}

data "aws_subnet_ids" "transfer" {
  count = (var.enable_transfer_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.transfer[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "transfer" {
  count = (var.enable_transfer_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.transfer[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.transfer[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-transfer", var.name)), var.tags)
}

#### transfer server
data "aws_vpc_endpoint_service" "transferserver" {
  count = (var.enable_transferserver_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  service = "transfer.server"
}

data "aws_subnet_ids" "transferserver" {
  count = (var.enable_transferserver_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id = var.vpc_id

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.transferserver[0].availability_zones
  }

  filter {
    name   = "subnet-id"
    values = var.subnet_ids
  }
}

resource "aws_vpc_endpoint" "transferserver" {
  count = (var.enable_transferserver_vpc_endpoint || var.enable_all_vpc_endpoints) ? 1 : 0

  vpc_id            = var.vpc_id
  service_name      = data.aws_vpc_endpoint_service.transferserver[0].service_name
  vpc_endpoint_type = "Interface"

  security_group_ids  = var.security_group_ids
  subnet_ids          = data.aws_subnet_ids.transferserver[0].ids
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(map("Name", format("%s-transferserver", var.name)), var.tags)
}
