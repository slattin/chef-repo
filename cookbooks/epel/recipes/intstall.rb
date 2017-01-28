#
# Cookbook:: .
# Recipe:: intstall
#
# Copyright:: 2017, The Authors, All Rights Reserved.
execute 'yum update' do
  command 'yum update -y'
end

# Https://fedoraproject.org/wiki/EPEL/FAQ#What_is_EPEL.3f
yum_package 'epel-release.noarch' do
  action :install
end
