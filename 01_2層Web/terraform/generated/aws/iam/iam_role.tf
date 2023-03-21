resource "aws_iam_role" "tfer--AWSServiceRoleForAPIGateway" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ops.apigateway.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "The Service Linked Role is used by Amazon API Gateway."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/APIGatewayServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAPIGateway"
  path                 = "/aws-service-role/ops.apigateway.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForSupport" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "support.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Enables resource access for AWS to provide billing, administrative and support services"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForSupport"
  path                 = "/aws-service-role/support.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForTrustedAdvisor" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "trustedadvisor.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Access for the AWS Trusted Advisor Service to help reduce cost, increase performance, and improve security of your AWS environment."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForTrustedAdvisor"
  path                 = "/aws-service-role/trustedadvisor.amazonaws.com/"
}

resource "aws_iam_role" "tfer--cdk-hnb659fds-cfn-exec-role-916016643386-ap-northeast-1" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudformation.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = "3600"
  name                 = "cdk-hnb659fds-cfn-exec-role-916016643386-ap-northeast-1"
  path                 = "/"
}

resource "aws_iam_role" "tfer--cdk-hnb659fds-deploy-role-916016643386-ap-northeast-1" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::916016643386:root"
      }
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  inline_policy {
    name   = "default"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"cloudformation:CreateChangeSet\",\"cloudformation:DeleteChangeSet\",\"cloudformation:DescribeChangeSet\",\"cloudformation:DescribeStacks\",\"cloudformation:ExecuteChangeSet\",\"cloudformation:CreateStack\",\"cloudformation:UpdateStack\"],\"Resource\":\"*\",\"Effect\":\"Allow\",\"Sid\":\"CloudFormationPermissions\"},{\"Condition\":{\"StringNotEquals\":{\"s3:ResourceAccount\":\"916016643386\"}},\"Action\":[\"s3:GetObject*\",\"s3:GetBucket*\",\"s3:List*\",\"s3:Abort*\",\"s3:DeleteObject*\",\"s3:PutObject*\"],\"Resource\":\"*\",\"Effect\":\"Allow\",\"Sid\":\"PipelineCrossAccountArtifactsBucket\"},{\"Condition\":{\"StringEquals\":{\"kms:ViaService\":\"s3.ap-northeast-1.amazonaws.com\"}},\"Action\":[\"kms:Decrypt\",\"kms:DescribeKey\",\"kms:Encrypt\",\"kms:ReEncrypt*\",\"kms:GenerateDataKey*\"],\"Resource\":\"*\",\"Effect\":\"Allow\",\"Sid\":\"PipelineCrossAccountArtifactsKey\"},{\"Action\":\"iam:PassRole\",\"Resource\":\"arn:aws:iam::916016643386:role/cdk-hnb659fds-cfn-exec-role-916016643386-ap-northeast-1\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudformation:DescribeStackEvents\",\"cloudformation:GetTemplate\",\"cloudformation:DeleteStack\",\"cloudformation:UpdateTerminationProtection\",\"sts:GetCallerIdentity\",\"cloudformation:GetTemplateSummary\"],\"Resource\":\"*\",\"Effect\":\"Allow\",\"Sid\":\"CliPermissions\"},{\"Action\":[\"s3:GetObject*\",\"s3:GetBucket*\",\"s3:List*\"],\"Resource\":[\"arn:aws:s3:::cdk-hnb659fds-assets-916016643386-ap-northeast-1\",\"arn:aws:s3:::cdk-hnb659fds-assets-916016643386-ap-northeast-1/*\"],\"Effect\":\"Allow\",\"Sid\":\"CliStagingBucket\"},{\"Action\":[\"ssm:GetParameter\"],\"Resource\":[\"arn:aws:ssm:ap-northeast-1:916016643386:parameter/cdk-bootstrap/hnb659fds/version\"],\"Effect\":\"Allow\",\"Sid\":\"ReadVersion\"}]}"
  }

  max_session_duration = "3600"
  name                 = "cdk-hnb659fds-deploy-role-916016643386-ap-northeast-1"
  path                 = "/"

  tags = {
    "aws-cdk:bootstrap-role" = "deploy"
  }

  tags_all = {
    "aws-cdk:bootstrap-role" = "deploy"
  }
}

resource "aws_iam_role" "tfer--cdk-hnb659fds-file-publishing-role-916016643386-ap-northeast-1" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::916016643386:root"
      }
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  inline_policy {
    name   = "cdk-hnb659fds-file-publishing-role-default-policy-916016643386-ap-northeast-1"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:GetObject*\",\"s3:GetBucket*\",\"s3:GetEncryptionConfiguration\",\"s3:List*\",\"s3:DeleteObject*\",\"s3:PutObject*\",\"s3:Abort*\"],\"Resource\":[\"arn:aws:s3:::cdk-hnb659fds-assets-916016643386-ap-northeast-1\",\"arn:aws:s3:::cdk-hnb659fds-assets-916016643386-ap-northeast-1/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"kms:Decrypt\",\"kms:DescribeKey\",\"kms:Encrypt\",\"kms:ReEncrypt*\",\"kms:GenerateDataKey*\"],\"Resource\":\"arn:aws:kms:ap-northeast-1:916016643386:key/AWS_MANAGED_KEY\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "cdk-hnb659fds-file-publishing-role-916016643386-ap-northeast-1"
  path                 = "/"

  tags = {
    "aws-cdk:bootstrap-role" = "file-publishing"
  }

  tags_all = {
    "aws-cdk:bootstrap-role" = "file-publishing"
  }
}

resource "aws_iam_role" "tfer--cdk-hnb659fds-image-publishing-role-916016643386-ap-northeast-1" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::916016643386:root"
      }
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  inline_policy {
    name   = "cdk-hnb659fds-image-publishing-role-default-policy-916016643386-ap-northeast-1"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ecr:PutImage\",\"ecr:InitiateLayerUpload\",\"ecr:UploadLayerPart\",\"ecr:CompleteLayerUpload\",\"ecr:BatchCheckLayerAvailability\",\"ecr:DescribeRepositories\",\"ecr:DescribeImages\",\"ecr:BatchGetImage\",\"ecr:GetDownloadUrlForLayer\"],\"Resource\":\"arn:aws:ecr:ap-northeast-1:916016643386:repository/cdk-hnb659fds-container-assets-916016643386-ap-northeast-1\",\"Effect\":\"Allow\"},{\"Action\":[\"ecr:GetAuthorizationToken\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "cdk-hnb659fds-image-publishing-role-916016643386-ap-northeast-1"
  path                 = "/"

  tags = {
    "aws-cdk:bootstrap-role" = "image-publishing"
  }

  tags_all = {
    "aws-cdk:bootstrap-role" = "image-publishing"
  }
}

resource "aws_iam_role" "tfer--cdk-hnb659fds-lookup-role-916016643386-ap-northeast-1" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::916016643386:root"
      }
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  inline_policy {
    name   = "LookupRolePolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"kms:Decrypt\"],\"Resource\":\"*\",\"Effect\":\"Deny\",\"Sid\":\"DontReadSecrets\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
  max_session_duration = "3600"
  name                 = "cdk-hnb659fds-lookup-role-916016643386-ap-northeast-1"
  path                 = "/"

  tags = {
    "aws-cdk:bootstrap-role" = "lookup"
  }

  tags_all = {
    "aws-cdk:bootstrap-role" = "lookup"
  }
}
