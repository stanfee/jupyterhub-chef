#
# Cookbook Name:: jupyterhub
# Recipe:: anaconda_config
#
# Copyright 2018, Sprout Social
#
# All rights reserved - Do Not Redistribute

# remove channels
node['anaconda']['config']['channels']['remove'].each do |r|
  bash "conda_remove_channel_#{r}" do
    code "#{node['anaconda']['config']['app_dir']}/current/bin/conda config --remove channels #{r}"
    cwd "#{node['anaconda']['config']['app_dir']}/current"
  end
end unless node['anaconda']['config']['channels']['remove'].empty?

# add channels
node['anaconda']['config']['channels']['add'].each do |a|
  bash "conda_add_channel_#{a}" do
    code "#{node['anaconda']['config']['app_dir']}/current/bin/conda config --add channels #{a}"
    cwd "#{node['anaconda']['config']['app_dir']}/current"
  end
end unless node['anaconda']['config']['channels']['add'].empty?
