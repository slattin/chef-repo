#
# Cookbook:: nginx
# Recipe:: install
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe 'epel::install'

yum_package 'nginx' do
  action :install
end

template '/usr/share/nginx/www/index.html' do
  source 'index.erb'
  mode '0644'
end

service 'nginx' do
  action :start
end