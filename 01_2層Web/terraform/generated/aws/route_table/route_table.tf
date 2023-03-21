resource "aws_route_table" "tfer--rtb-0781aaaa3e8c27a2c" {
  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-00edbcf38b9de843c_id}"
}

resource "aws_route_table" "tfer--rtb-08855a50936be1db7" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-07c59007f354bbf29"
  }

  tags = {
    Name = "パブリックルートテーブル-N\u0026S"
  }

  tags_all = {
    Name = "パブリックルートテーブル-N\u0026S"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-02ed7486288a062b3_id}"
}

resource "aws_route_table" "tfer--rtb-0caea1d5ea7e6694e" {
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "nat-0c6feb754b055fdc7"
  }

  tags = {
    Name = "基礎からのネットワーク＆サーバ構築"
  }

  tags_all = {
    Name = "基礎からのネットワーク＆サーバ構築"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-02ed7486288a062b3_id}"
}
