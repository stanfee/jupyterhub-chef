#
# Cookbook:: jupyterhub
# Recipe:: jupyterhub
#
# Copyright 2018, Sprout Social
#
# All rights reserved - Do Not Redistribute

# install jupyterhub
include_recipe "#{cookbook_name}::jupyterhub_install"
include_recipe "#{cookbook_name}::jupyterhub_config"
include_recipe "#{cookbook_name}::jupyterhub_parallel"
include_recipe "#{cookbook_name}::jupyterhub_service"
include_recipe "#{cookbook_name}::jupyterhub_ipykernel"
