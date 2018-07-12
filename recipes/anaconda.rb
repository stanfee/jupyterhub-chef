#
# Cookbook:: jupyterhub
# Recipe:: anaconda
#
# Copyright 2018, Sprout Social
#
# All rights reserved - Do Not Redistribute

# install anaconda
include_recipe "#{cookbook_name}::anaconda_install"
include_recipe "#{cookbook_name}::anaconda_config"
