#
# Cookbook Name:: jupyterhub
# Recipe:: jupyterhub_parallel
#
# Copyright 2018, Sprout Social
#
# All rights reserved - Do Not Redistribute

# enable ipython clusters tab in jupyterhub
if node['jupyterhub']['config']['allow_parallel_computing']
  bash 'jupyterhub_enable_parallel_computing' do
    code <<-EOF
      if /bin/grep -qi ipyparallel <(/bin/pip3 list --format=columns); then
        /bin/ipcluster nbextension enable
        /bin/jupyter nbextension install --sys-prefix --py ipyparallel
        /bin/jupyter nbextension enable --sys-prefix --py ipyparallel
        /bin/jupyter serverextension enable --sys-prefix --py ipyparallel
      fi
    EOF
  end
end
