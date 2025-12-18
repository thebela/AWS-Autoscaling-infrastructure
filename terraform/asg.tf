resource "aws_autoscaling_group" "this" {
  name                = "${var.project_name}-asg"
  max_size            = var.max_size
  min_size            = var.min_size
  desired_capacity    = var.desired_capacity
  health_check_type   = "EC2"
  vpc_zone_identifier = [
    aws_subnet.public_1.id,
    aws_subnet.public_2.id
  ]

  launch_template {
    id      = aws_launch_template.this.id
    version = "$Latest"
  }

  target_group_arns = [aws_lb_target_group.this.arn]

  tag {
    key                 = "Name"
    value               = var.project_name
    propagate_at_launch = true
  }
}
