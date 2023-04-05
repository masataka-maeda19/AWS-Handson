resource "aws_iam_instance_profile" "tfer--AWSCloud9SSMInstanceProfile" {
  name = "AWSCloud9SSMInstanceProfile"
  path = "/cloud9/"
}

resource "aws_iam_instance_profile" "tfer--datalake-ec2-InstanceProfile-5L3JP2TifoNG" {
  name = "datalake-ec2-InstanceProfile-5L3JP2TifoNG"
  path = "/"
}

resource "aws_iam_instance_profile" "tfer--test2roll" {
  name = "test2roll"
  path = "/"
  role = "test2roll"
}

resource "aws_iam_instance_profile" "tfer--test3Wordpressroll" {
  name = "test3Wordpressroll"
  path = "/"
  role = "test3Wordpressroll"
}
