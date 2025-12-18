resource "aws_launch_template" "this" {
  name = "${var.project_name}-lt"

  image_id      = "ami-0e306788ff2473ccb" # Amazon Linux 2
  instance_type = var.instance_type

  user_data = filebase64("${path.module}/userdata.sh")

  network_interfaces {
    associate_public_ip_address = true
  }

  lifecycle {
    create_before_destroy = true
  }
}
