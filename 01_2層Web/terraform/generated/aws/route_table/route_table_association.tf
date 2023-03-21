resource "aws_route_table_association" "tfer--subnet-06d78e8da8cc25b7d" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-0caea1d5ea7e6694e_id}"
  subnet_id      = "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-06d78e8da8cc25b7d_id}"
}

resource "aws_route_table_association" "tfer--subnet-0946ee6aa4eb00495" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-08855a50936be1db7_id}"
  subnet_id      = "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0946ee6aa4eb00495_id}"
}
