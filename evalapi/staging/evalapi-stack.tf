resource "aws_opsworks_stack" "stack" {
  name = "evalapi-staging-test2"
  region = "us-east-1"
  service_role_arn = "arn:aws:iam::794759568553:role/aws-opsworks-service-role"
  default_instance_profile_arn = "arn:aws:iam::794759568553:instance-profile/aws-opsworks-ec2-role"
  agent_version = "LATEST"
  default_availability_zone = "us-east-1a"
  configuration_manager_name = "Chef"
  configuration_manager_version = "11.10"
  use_custom_cookbooks = false
  use_opsworks_security_groups = true
  default_os = "Ubuntu 14.04 LTS"
}

provider "aws" {
  region = "us-east-1"
  access_key = "${var.aws_dev_access_key}"
  secret_key = "${var.aws_dev_secret_key}"
}
