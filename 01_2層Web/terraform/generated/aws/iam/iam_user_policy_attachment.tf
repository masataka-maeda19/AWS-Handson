resource "aws_iam_user_policy_attachment" "tfer--maeda-0040-masatala_IAMUserChangePassword" {
  policy_arn = "arn:aws:iam::aws:policy/IAMUserChangePassword"
  user       = "maeda@masatala"
}
