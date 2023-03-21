resource "aws_iam_group_policy_attachment" "tfer--admin_AWSCostAndUsageReportAutomationPolicy" {
  group      = "admin"
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSCostAndUsageReportAutomationPolicy"
}

resource "aws_iam_group_policy_attachment" "tfer--admin_AmazonEC2FullAccess" {
  group      = "admin"
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--admin_AmazonRDSFullAccess" {
  group      = "admin"
  policy_arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--admin_AmazonS3FullAccess" {
  group      = "admin"
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--admin_AmazonSQSFullAccess" {
  group      = "admin"
  policy_arn = "arn:aws:iam::aws:policy/AmazonSQSFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--admin_AmazonVPCFullAccess" {
  group      = "admin"
  policy_arn = "arn:aws:iam::aws:policy/AmazonVPCFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--admin_AutoScalingFullAccess" {
  group      = "admin"
  policy_arn = "arn:aws:iam::aws:policy/AutoScalingFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--admin_CloudWatchFullAccess" {
  group      = "admin"
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--admin_ElasticLoadBalancingFullAccess" {
  group      = "admin"
  policy_arn = "arn:aws:iam::aws:policy/ElasticLoadBalancingFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--admin_IAMFullAccess" {
  group      = "admin"
  policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"
}
