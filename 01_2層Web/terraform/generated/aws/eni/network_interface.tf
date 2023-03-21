resource "aws_network_interface" "tfer--eni-0301542a506709e96" {
  attachment {
    device_index = "0"
    instance     = "i-06e2c6b3e2bc8ec41"
  }

  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.0.2.10"
  private_ip_list    = ["10.0.2.10"]
  private_ips        = ["10.0.2.10"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f75c0828e8f1b868"]
  source_dest_check  = "true"
  subnet_id          = "subnet-06d78e8da8cc25b7d"
}

resource "aws_network_interface" "tfer--eni-07a03491ea5948464" {
  attachment {
    device_index = "0"
    instance     = "i-0e67f5d2977bdef0a"
  }

  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.0.1.10"
  private_ip_list    = ["10.0.1.10"]
  private_ips        = ["10.0.1.10"]
  private_ips_count  = "0"
  security_groups    = ["sg-001a77500b3dc2972"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0946ee6aa4eb00495"
}

resource "aws_network_interface" "tfer--eni-0be7e646c3b75001e" {
  description        = "Interface for NAT Gateway nat-0c6feb754b055fdc7"
  interface_type     = "nat_gateway"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.0.1.152"
  private_ip_list    = ["10.0.1.152"]
  private_ips        = ["10.0.1.152"]
  private_ips_count  = "0"
  source_dest_check  = "false"
  subnet_id          = "subnet-0946ee6aa4eb00495"
}
