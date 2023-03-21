resource "aws_nat_gateway" "tfer--nat-0c6feb754b055fdc7" {
  allocation_id     = "eipalloc-0d82f1bad484426bc"
  connectivity_type = "public"
  subnet_id         = "subnet-0946ee6aa4eb00495"

  tags = {
    Name = "基礎からのネットワーク＆サーバ構築　NAT"
  }

  tags_all = {
    Name = "基礎からのネットワーク＆サーバ構築　NAT"
  }
}
