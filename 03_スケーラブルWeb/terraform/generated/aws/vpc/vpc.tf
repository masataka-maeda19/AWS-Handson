resource "aws_vpc" "tfer--vpc-02ed7486288a062b3" {
  assign_generated_ipv6_cidr_block = "false"
  cidr_block                       = "10.0.0.0/16"
  enable_classiclink               = "false"
  enable_classiclink_dns_support   = "false"
  enable_dns_hostnames             = "true"
  enable_dns_support               = "true"
  instance_tenancy                 = "default"
  ipv6_netmask_length              = "0"

  tags = {
    Name = "基礎からのネットワーク＆サーバ構築"
  }

  tags_all = {
    Name = "基礎からのネットワーク＆サーバ構築"
  }
}

resource "aws_vpc" "tfer--vpc-09c190a01ff931c68" {
  assign_generated_ipv6_cidr_block = "false"
  cidr_block                       = "172.31.0.0/16"
  enable_classiclink               = "false"
  enable_classiclink_dns_support   = "false"
  enable_dns_hostnames             = "true"
  enable_dns_support               = "true"
  instance_tenancy                 = "default"
  ipv6_netmask_length              = "0"
}

resource "aws_vpc" "tfer--vpc-0b1ad577cb649d6c7" {
  assign_generated_ipv6_cidr_block = "false"
  cidr_block                       = "10.0.0.0/16"
  enable_classiclink               = "false"
  enable_classiclink_dns_support   = "false"
  enable_dns_hostnames             = "true"
  enable_dns_support               = "true"
  instance_tenancy                 = "default"
  ipv6_netmask_length              = "0"

  tags = {
    Name = "スケーラブルウェブサイト構築ハンズオン-vpc"
  }

  tags_all = {
    Name = "スケーラブルウェブサイト構築ハンズオン-vpc"
  }
}
