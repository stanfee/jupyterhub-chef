#
# Cookbook Name:: jupyterhub
# Recipe:: nodejs
#
# Copyright 2018, Sprout Social
#
# All rights reserved - Do Not Redistribute

package 'nodejs-legacy'

include_recipe 'nodejs::install_from_package'
include_recipe 'nodejs::npm'

# install global npms
node['nodejs']['global_npms'].each do |g_npm|
  bash "install_#{g_npm}" do
    code "npm install -g #{g_npm}"
  end
end unless node['nodejs']['global_npms'].empty?
