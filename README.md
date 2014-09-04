# aws-snapshot-tool-chef-cookbook

Wraps the aws-snapshot-tool <https://github.com/evannuil/aws-snapshot-tool> in a Chef cookbook.


## Supported Platforms

Ubuntu 12.04

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>[:aws_snapshot_tool][:aws_access_key]</tt></td>
    <td>String</td>
    <td>AWS Access Key</td>
    <td><tt>Empty (REQUIRED)</tt></td>
  </tr>
  <tr>
    <td><tt>[:aws_snapshot_tool][:aws_secret_key]</tt></td>
    <td>String</td>
    <td>AWS secret yey</td>
    <td><tt>Empty (REQUIRED)</tt></td>
  </tr>

  <tr>
    <td><tt>[:aws_snapshot_tool][:ec2_region_name]</tt></td>
    <td>String</td>
    <td>EC2 region name</td>
    <td><tt>us-east-1</tt></td>
  </tr>


   <tr>
    <td><tt>[:aws_snapshot_tool][:ec2_region_endpoint]</tt></td>
    <td>String</td>
    <td>EC2 region endpoint</td>
    <td><tt>ec2.us-east-1.amazonaws.com</tt></td>
  </tr>


   <tr>
    <td><tt>[:aws_snapshot_tool][:tag_name]</tt></td>
    <td>String</td>
    <td>Tags to snapshot in AWS</td>
    <td><tt>MakeSnapshot</tt></td>
  </tr>


   <tr>
    <td><tt>[:aws_snapshot_tool][:log_file_path]</tt></td>
    <td>String</td>
    <td>Full path to aws-snapshot-tool log</td>
    <td><tt>/opt/aws-snapshot-tool/aws-snapshot-tool.log</tt></td>
  </tr>


   <tr>
    <td><tt>[:aws_snapshot_tool][:keep_day]</tt></td>
    <td>Integer</td>
    <td>Number of daily snapshots to keep</td>
    <td><tt>7</tt></td>
  </tr>



   <tr>
    <td><tt>[:aws_snapshot_tool][:keep_week]</tt></td>
    <td>Integer</td>
    <td>Number of weekly snapshots to keep</td>
    <td><tt>7</tt></td>
  </tr>


   <tr>
    <td><tt>[:aws_snapshot_tool][:keep_year]</tt></td>
    <td>Integer</td>
    <td>Number of yearly snapshots to keep</td>
    <td><tt>7</tt></td>
  </tr>


 
   <tr>
    <td><tt>[:aws_snapshot_tool][:sns_arn]</tt></td>
    <td>String</td>
    <td>Amazon SNS ARN for notificaitons</td>
    <td><tt>Empty (OPTIONAL)</tt></td>
  </tr>




</table>


  


## Usage

### aws-snapshot-tool-chef::default

Include `aws-snapshot-tool-chef` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[aws-snapshot-tool-chef::default]"
  ]
}
```

Set required attributes:

[:aws_snapshot_tool][:aws_access_key]
[:aws_snapshot_tool][:aws_secret_key]
[:aws_snapshot_tool][:ec2_region_name]
[:aws_snapshot_tool][:ec2_region_endpoint]

 
## License and Authors

Author:: MikeBThun
