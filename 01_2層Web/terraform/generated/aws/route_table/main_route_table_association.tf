resource "aws_main_route_table_association" "tfer--vpc-00edbcf38b9de843c" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-0781aaaa3e8c27a2c_id}"
  vpc_id         = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-00edbcf38b9de843c_id}"
}

resource "aws_main_route_table_association" "tfer--vpc-02ed7486288a062b3" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-0caea1d5ea7e6694e_id}"
  vpc_id         = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-02ed7486288a062b3_id}"
}
