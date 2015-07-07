#
# Cookbook Name:: ntp
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

["ntp", "ntpdate"].each do |package_name|
  package package_name
end

#package "ntp" do
#  action :install
#end

#package "ntpdate"

template "/etc/ntp.conf" do
  source "ntp.erb"
  owner "root"
  group "root"
  mode "0644"
  action :create
end

service "ntpd" do
  action [:start, :enable]
end
