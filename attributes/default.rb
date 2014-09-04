
default[:aws_snapshot_tool][:aws_access_key] = ""
default[:aws_snapshot_tool][:aws_secret_key] = ""

default[:aws_snapshot_tool][:sns_arn] = ""

default[:aws_snapshot_tool][:ec2_region_name] = "us-east-1"
default[:aws_snapshot_tool][:ec2_region_endpoint] = "ec2.us-east-1.amazonaws.com"

default[:aws_snapshot_tool][:tag_name] = "MakeSnapshot"

default[:aws_snapshot_tool][:log_file_path] = "/opt/aws-snapshot-tool/aws-snapshot-tool.log"

default[:aws_snapshot_tool][:keep_day] = 7
default[:aws_snapshot_tool][:keep_week] = 5
default[:aws_snapshot_tool][:keep_month] = 11


