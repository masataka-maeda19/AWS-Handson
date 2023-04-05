resource "aws_db_subnet_group" "tfer--db-0020-subnet-0020-user1" {
  description = "RDS for MySQL"
  name        = "db subnet user1"
  subnet_ids  = ["subnet-08da3d84e8b3dd7c6", "subnet-0c8308346539f6dfa"]
}
