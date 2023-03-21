resource "aws_iam_role_policy" "tfer--cdk-hnb659fds-deploy-role-916016643386-ap-northeast-1_default" {
  name = "default"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "cloudformation:CreateChangeSet",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DescribeChangeSet",
        "cloudformation:DescribeStacks",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:CreateStack",
        "cloudformation:UpdateStack"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "CloudFormationPermissions"
    },
    {
      "Action": [
        "s3:GetObject*",
        "s3:GetBucket*",
        "s3:List*",
        "s3:Abort*",
        "s3:DeleteObject*",
        "s3:PutObject*"
      ],
      "Condition": {
        "StringNotEquals": {
          "s3:ResourceAccount": "916016643386"
        }
      },
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "PipelineCrossAccountArtifactsBucket"
    },
    {
      "Action": [
        "kms:Decrypt",
        "kms:DescribeKey",
        "kms:Encrypt",
        "kms:ReEncrypt*",
        "kms:GenerateDataKey*"
      ],
      "Condition": {
        "StringEquals": {
          "kms:ViaService": "s3.ap-northeast-1.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "PipelineCrossAccountArtifactsKey"
    },
    {
      "Action": "iam:PassRole",
      "Effect": "Allow",
      "Resource": "arn:aws:iam::916016643386:role/cdk-hnb659fds-cfn-exec-role-916016643386-ap-northeast-1"
    },
    {
      "Action": [
        "cloudformation:DescribeStackEvents",
        "cloudformation:GetTemplate",
        "cloudformation:DeleteStack",
        "cloudformation:UpdateTerminationProtection",
        "sts:GetCallerIdentity",
        "cloudformation:GetTemplateSummary"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "CliPermissions"
    },
    {
      "Action": [
        "s3:GetObject*",
        "s3:GetBucket*",
        "s3:List*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::cdk-hnb659fds-assets-916016643386-ap-northeast-1",
        "arn:aws:s3:::cdk-hnb659fds-assets-916016643386-ap-northeast-1/*"
      ],
      "Sid": "CliStagingBucket"
    },
    {
      "Action": [
        "ssm:GetParameter"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:ssm:ap-northeast-1:916016643386:parameter/cdk-bootstrap/hnb659fds/version"
      ],
      "Sid": "ReadVersion"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "cdk-hnb659fds-deploy-role-916016643386-ap-northeast-1"
}

resource "aws_iam_role_policy" "tfer--cdk-hnb659fds-file-publishing-role-916016643386-ap-northeast-1_cdk-hnb659fds-file-publishing-role-default-policy-916016643386-ap-northeast-1" {
  name = "cdk-hnb659fds-file-publishing-role-default-policy-916016643386-ap-northeast-1"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:GetObject*",
        "s3:GetBucket*",
        "s3:GetEncryptionConfiguration",
        "s3:List*",
        "s3:DeleteObject*",
        "s3:PutObject*",
        "s3:Abort*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::cdk-hnb659fds-assets-916016643386-ap-northeast-1",
        "arn:aws:s3:::cdk-hnb659fds-assets-916016643386-ap-northeast-1/*"
      ]
    },
    {
      "Action": [
        "kms:Decrypt",
        "kms:DescribeKey",
        "kms:Encrypt",
        "kms:ReEncrypt*",
        "kms:GenerateDataKey*"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:kms:ap-northeast-1:916016643386:key/AWS_MANAGED_KEY"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "cdk-hnb659fds-file-publishing-role-916016643386-ap-northeast-1"
}

resource "aws_iam_role_policy" "tfer--cdk-hnb659fds-image-publishing-role-916016643386-ap-northeast-1_cdk-hnb659fds-image-publishing-role-default-policy-916016643386-ap-northeast-1" {
  name = "cdk-hnb659fds-image-publishing-role-default-policy-916016643386-ap-northeast-1"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:PutImage",
        "ecr:InitiateLayerUpload",
        "ecr:UploadLayerPart",
        "ecr:CompleteLayerUpload",
        "ecr:BatchCheckLayerAvailability",
        "ecr:DescribeRepositories",
        "ecr:DescribeImages",
        "ecr:BatchGetImage",
        "ecr:GetDownloadUrlForLayer"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ecr:ap-northeast-1:916016643386:repository/cdk-hnb659fds-container-assets-916016643386-ap-northeast-1"
    },
    {
      "Action": [
        "ecr:GetAuthorizationToken"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "cdk-hnb659fds-image-publishing-role-916016643386-ap-northeast-1"
}

resource "aws_iam_role_policy" "tfer--cdk-hnb659fds-lookup-role-916016643386-ap-northeast-1_LookupRolePolicy" {
  name = "LookupRolePolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "kms:Decrypt"
      ],
      "Effect": "Deny",
      "Resource": "*",
      "Sid": "DontReadSecrets"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "cdk-hnb659fds-lookup-role-916016643386-ap-northeast-1"
}
