###################
##  GCP OUTPUTS  ##
###################

output "GCP subnet" {
  value = "${google_compute_subnetwork.tf-subnet.ip_cidr_range}"
}

output "GCP Tunnel Endpoint" {
  value = "${google_compute_address.vpn-static-ip1.address}"
}

output "GCP region" {
  value = "${var.gcp_region}"
}

output "GCP Test VM Address" {
  value = [
    "${google_compute_instance.vpn-test-vm.network_interface.0.access_config.0.assigned_nat_ip}",
    "${google_compute_instance.vpn-test-vm.network_interface.0.address}"
  ]
}


###################
##  AWS OUTPUTS  ##
###################

output "AWS subnet" {
  value = "${aws_subnet.demo-vpn-subnet.cidr_block}"
}

output "AWS region" {
  value = "${var.aws_region}"
}

output "AWS Tunnel 1 Endpoint" {
  value = "${aws_vpn_connection.gcp-vpn-connection.tunnel1_address}"
}

output "AWS Test VM address" {
  value = [
    "${aws_instance.vpn-test-vm.public_ip}",
    "${aws_instance.vpn-test-vm.private_ip}"
  ]
}

output "VPN Tunnel Shared Secret: GCP-AWS" {
  value = "${google_compute_vpn_tunnel.tunnel-to-aws.shared_secret}"
}

output "AWS tunnel inside address" {
  value ="${aws_vpn_connection.gcp-vpn-connection.tunnel1_vgw_inside_address}"
}