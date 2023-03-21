resource "aws_iam_user_policy_attachment" "tfer--test2_AmazonManagedBlockchainFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonManagedBlockchainFullAccess"
  user       = "test2"
}

resource "aws_iam_user_policy_attachment" "tfer--test3_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = "test3"
}
