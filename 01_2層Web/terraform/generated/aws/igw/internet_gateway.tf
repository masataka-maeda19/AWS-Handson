resource "aws_internet_gateway" "tfer--igw-07c59007f354bbf29" {
  tags = {
    Name = "IGW-N\u0026S"
  }

  tags_all = {
    Name = "IGW-N\u0026S"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-02ed7486288a062b3_id}"
}

resource "aws_internet_gateway" "tfer--igw-0bac0a0eb2df9cb8b" {
  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-00edbcf38b9de843c_id}"
}
