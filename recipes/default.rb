#
# Cookbook Name:: 
# Recipe:: default aws-snapshot-tool-chef
#
# Copyright (C) 2014 MikeB
#
# All rights reserved - Do Not Redistribute
#

include_recipe "python"

package "git"

%w( boto config ).each do |p|
  python_pip p
end


git "/opt/aws-snapshot-tool" do
  repository "https://github.com/evannuil/aws-snapshot-tool.git"
  reference "master"
  action :sync
end 

## copy the config template

template "/opt/aws-snapshot-tool/config.py" do
  source "config.py.erb"
end

## create the cron jobs

cron "aws-snapshot-tool day" do
   hour "0"
   minute "0"
   command "/opt/aws-snapshot-tool/makesnapshots.py day"
   action :create
end
 
cron "aws-snapshot-tool week" do
   hour "2"
   minute "0"
   weekday "0"
   command "/opt/aws-snapshot-tool/makesnapshots.py week"
   action :create
end

cron "aws-snapshot-tool month" do
   hour "4"
   minute "0"
   day "1"
   command "/opt/aws-snapshot-tool/makesnapshots.py month"
   action :create
end

