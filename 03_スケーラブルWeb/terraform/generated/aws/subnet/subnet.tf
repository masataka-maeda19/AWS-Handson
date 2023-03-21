resource "aws_subnet" "tfer--subnet-03e5718aa651656a3" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.1.0/24"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "スケーラブルウェブサイト構築ハンズオンpublic2-1c"
  }

  tags_all = {
    Name = "スケーラブルウェブサイト構築ハンズオンpublic2-1c"
  }

  vpc_id = "vpc-0b1ad577cb649d6c7"
}

resource "aws_subnet" "tfer--subnet-06d78e8da8cc25b7d" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.2.0/24"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "プライベートサブネット-N\u0026S"
  }

  tags_all = {
    Name = "プライベートサブネット-N\u0026S"
  }

  vpc_id = "vpc-02ed7486288a062b3"
}

resource "aws_subnet" "tfer--subnet-08da3d84e8b3dd7c6" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.2.0/24"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "スケーラブルウェブサイト構築ハンズオンprivate1-1a"
  }

  tags_all = {
    Name = "スケーラブルウェブサイト構築ハンズオンprivate1-1a"
  }

  vpc_id = "vpc-0b1ad577cb649d6c7"
}

resource "aws_subnet" "tfer--subnet-0946ee6aa4eb00495" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.1.0/24"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "パブリックサブネット-N\u0026S"
  }

  tags_all = {
    Name = "パブリックサブネット-N\u0026S"
  }

  vpc_id = "vpc-02ed7486288a062b3"
}

resource "aws_subnet" "tfer--subnet-0b2ec6a2483ac1238" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.0.0/24"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "スケーラブルウェブサイト構築ハンズオンpublic1-1a"
  }

  tags_all = {
    Name = "スケーラブルウェブサイト構築ハンズオンpublic1-1a"
  }

  vpc_id = "vpc-0b1ad577cb649d6c7"
}

resource "aws_subnet" "tfer--subnet-0c8308346539f6dfa" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.3.0/24"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "スケーラブルウェブサイト構築ハンズオンprivate2-1c"
  }

  tags_all = {
    Name = "スケーラブルウェブサイト構築ハンズオンprivate2-1c"
  }

  vpc_id = "vpc-0b1ad577cb649d6c7"
}
