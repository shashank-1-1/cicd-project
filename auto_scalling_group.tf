resource "aws_launch_template" "auto" {
  name_prefix   = "auto"
  image_id      = "ami-068257025f72f470d"
  instance_type = "t2.micro"
}

resource "aws_autoscaling_group" "scalling" {
  availability_zones = ["ap-south-1a"]
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1

  launch_template {
    id      = aws_launch_template.auto.id
    version = "$Latest"
  }
}