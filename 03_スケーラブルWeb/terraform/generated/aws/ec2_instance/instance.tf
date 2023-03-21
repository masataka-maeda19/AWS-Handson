resource "aws_instance" "tfer--i-01a6b5b405f34d21b_test3web-0023-1" {
  ami                         = "ami-0ffac3e16de16665e"
  associate_public_ip_address = "true"
  availability_zone           = "ap-northeast-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "1"
  cpu_threads_per_core = "1"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "test3Wordpressroll"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = "0"
  key_name                             = "Test3WordPress"

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"
  private_ip = "10.0.0.212"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    volume_size           = "8"
    volume_type           = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-0b2ec6a2483ac1238"

  tags = {
    Name = "test3web#1"
  }

  tags_all = {
    Name = "test3web#1"
  }

  tenancy                = "default"
  user_data_base64       = "IyEvYmluL2Jhc2gKCnl1bSAteSB1cGRhdGUKeXVtIC15IGluc3RhbGwgcGhwIGh0dHBkIG15c3FsCgpQSFBfVkVSU0lPTj1gcGhwIC12IHwgaGVhZCAtbiAxIHwgYXdrICd7cHJpbnQgJDJ9JyB8IGF3ayAtRiAiLiIgJ3twcmludCAkMX0nYAp3aGlsZSBbICAke1BIUF9WRVJTSU9OfSAtbmUgNyBdCmRvCmFtYXpvbi1saW51eC1leHRyYXMgaW5zdGFsbCBwaHA3LjQgLXkKUEhQX1ZFUlNJT049YHBocCAtdiB8IGhlYWQgLW4gMSB8IGF3ayAne3ByaW50ICQyfScgfCBhd2sgLUYgIi4iICd7cHJpbnQgJDF9J2AKZG9uZQoKeXVtIC15IGluc3RhbGwgcGhwLW1ic3RyaW5nIHBocC14bWwKCndnZXQgaHR0cDovL2phLndvcmRwcmVzcy5vcmcvbGF0ZXN0LWphLnRhci5neiAtUCAvdG1wLwp0YXIgenh2ZiAvdG1wL2xhdGVzdC1qYS50YXIuZ3ogLUMgL3RtcApjcCAtciAvdG1wL3dvcmRwcmVzcy8qIC92YXIvd3d3L2h0bWwvCmNob3duIGFwYWNoZTphcGFjaGUgLVIgL3Zhci93d3cvaHRtbAoKc3lzdGVtY3RsIGVuYWJsZSBodHRwZC5zZXJ2aWNlCnN5c3RlbWN0bCBzdGFydCBodHRwZC5zZXJ2aWNlCg=="
  vpc_security_group_ids = ["sg-048689f0b73a1294e"]
}

resource "aws_instance" "tfer--i-04aea276ba3ba9fa0_test3web-0023-2" {
  ami                         = "ami-0962926efc7ba4cd0"
  associate_public_ip_address = "true"
  availability_zone           = "ap-northeast-1c"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "1"
  cpu_threads_per_core = "1"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "test3Wordpressroll"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = "0"

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"
  private_ip = "10.0.1.16"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    volume_size           = "8"
    volume_type           = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-03e5718aa651656a3"

  tags = {
    Name = "test3web#2"
  }

  tags_all = {
    Name = "test3web#2"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-048689f0b73a1294e"]
}
