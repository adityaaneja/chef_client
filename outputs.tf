output "ec2_dns_name" {
  value = "${aws_instance.lamp.*.public_dns}"
}


