resource "aws_iam_user" "tfer--AIDA5KRWYXU5GNJNVAOTX" {
  force_destroy = "false"
  name          = "test3"
  path          = "/"

  tags = {
    AKIA5KRWYXU5EGEPCSXN = "test3"
    name                 = "スケーラブルウェブサイト構築ハンズオン"
  }

  tags_all = {
    AKIA5KRWYXU5EGEPCSXN = "test3"
    name                 = "スケーラブルウェブサイト構築ハンズオン"
  }
}

resource "aws_iam_user" "tfer--AIDA5KRWYXU5M7N6O2SWE" {
  force_destroy = "false"
  name          = "test2"
  path          = "/"
}
