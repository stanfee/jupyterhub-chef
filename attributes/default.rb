# node attributes
default['nodejs']['version'] = '6.4.0'
default['nodejs']['npm'] = '3.10.3'
default['nodejs']['src_url'] = 'https://nodejs.org/dist/v6.4.0'
default['nodejs']['checksum'] = 'a58c930618cf5b0862aa329a626e850519036acfcd746983010c9946df1797d0'
default['nodejs']['global_npms'] = ['npm', 'configurable-http-proxy']

# python attributes
default['python']['python2']['install'] = true
default['python']['python2']['package'] = 'python-dev'
default['python']['python2']['pips'] = ['pip', 'setuptools', 'wheel', 'virtualenv', 'jupyter', 'py4j', 'ipyparallel']
default['python']['python2']['ipykernel']['install'] = false
default['python']['python2']['ipykernel']['python_version'] = 'python2'
default['python']['python2']['ipykernel']['kernel_name'] = 'python2'
default['python']['python2']['ipykernel']['kernel_displayname'] = 'Python 2'
default['python']['python2']['ipykernel']['pips'] = ['ipykernel']
default['python']['python3']['install'] = true
default['python']['python3']['package'] = 'python3.5-dev'
default['python']['python3']['pips'] = ['pip', 'setuptools', 'wheel', 'virtualenv', 'jupyter', 'py4j', 'ipyparallel']
default['python']['python3']['ipykernel']['install'] = false
default['python']['python3']['ipykernel']['python_version'] = 'python3'
default['python']['python3']['ipykernel']['kernel_name'] = 'python3'
default['python']['python3']['ipykernel']['kernel_displayname'] = 'Python 3'
default['python']['python3']['ipykernel']['pips'] = ['ipykernel']
default['python']['virtualenv']['env_dir'] = '/opt/virtualenv'

# jupyterhub attributes
default['jupyterhub']['install_from'] = 'python'
default['jupyterhub']['install_version'] = '0.8.1'
case node['jupyterhub']['install_from']
when 'git'
  default['jupyterhub']['git']['repo'] = 'https://github.com/jupyterhub/jupyterhub'
when 'python'
  default['jupyterhub']['python3']['pips'] = ['']
end
default['jupyterhub']['addons']['pips'] = ['jupyterhub-ldap-authenticator']
default['jupyterhub']['addons']['condas'] = ['']
default['jupyterhub']['addons']['nbextensions'] = ['']
default['jupyterhub']['group']['name'] = 'jupyterhub'
default['jupyterhub']['group']['gid'] = 10000
default['jupyterhub']['user']['name'] = 'jupyterhub'
default['jupyterhub']['user']['uid'] = 15000
default['jupyterhub']['user']['home'] = '/home/jupyterhub'
default['jupyterhub']['user']['shell'] = '/bin/bash'
default['jupyterhub']['db']['type'] = 'sqlite'
default['jupyterhub']['db']['user'] = 'jupyterhub_db_user'
default['jupyterhub']['db']['pass'] = 'jupyterhub_db_pass'
default['jupyterhub']['db']['host'] = 'jupyterhub_db_server'
default['jupyterhub']['db']['port'] = '5432'
default['jupyterhub']['db']['name'] = 'jupyterhub_db_name'
default['jupyterhub']['config']['run_as'] = 'root'
default['jupyterhub']['config']['pid_file'] = '/var/run/jupyter.pid'
default['jupyterhub']['config']['app_dir'] = '/opt/jupyterhub'
default['jupyterhub']['config']['runtime_dir'] = '/srv/jupyterhub'
default['jupyterhub']['config']['log_dir'] = '/var/log/jupyterhub'
default['jupyterhub']['config']['allow_parallel_computing'] = true
default['jupyterhub']['config']['enable_ssl'] = false
default['jupyterhub']['config']['enable_ldap'] = false
default['jupyterhub']['config']['jupyterhub_config']['JupyterHub.ip'] = ''
default['jupyterhub']['config']['jupyterhub_config']['JupyterHub.port'] = '8000'
default['jupyterhub']['config']['jupyterhub_config']['JupyterHub.ssl_port'] = '8443'
default['jupyterhub']['config']['jupyterhub_config']['JupyterHub.hub_ip'] = '127.0.0.1'
default['jupyterhub']['config']['jupyterhub_config']['JupyterHub.hub_port'] = '8081'
default['jupyterhub']['config']['jupyterhub_config']['JupyterHub.proxy_api_ip'] = '127.0.0.1'
default['jupyterhub']['config']['jupyterhub_config']['JupyterHub.proxy_api_port'] = '8001'
default['jupyterhub']['config']['jupyterhub_config']['JupyterHub.ssl_cert'] = '/etc/ssl/certs/jupyterhub.crt'
default['jupyterhub']['config']['jupyterhub_config']['JupyterHub.ssl_key'] = '/etc/ssl/private/jupyterhub.key'
default['jupyterhub']['config']['jupyterhub_config']['Authenticator.whitelist'] = []
default['jupyterhub']['config']['jupyterhub_config']['Authenticator.admin_users'] = ['stan']
default['jupyterhub']['config']['jupyterhub_config']['JupyterHub.authenticator_class'] = 'jupyterhub.auth.PAMAuthenticator'
default['jupyterhub']['config']['jupyterhub_config']['Spawner.cmd'] = 'jupyterhub-singleuser'
default['jupyterhub']['config']['jupyterhub_config']['Spawner.notebook_dir'] = '~/'
default['jupyterhub']['kernels']['python2']['type'] = 'python'
default['jupyterhub']['kernels']['python2']['install'] = true
default['jupyterhub']['kernels']['python2']['python_version'] = 'python2'
default['jupyterhub']['kernels']['python2']['kernel_name'] = 'python2'
default['jupyterhub']['kernels']['python2']['kernel_displayname'] = 'Python 2'
default['jupyterhub']['kernels']['python2']['pips'] = ['pip', 'setuptools', 'wheel', 'ipykernel']
default['jupyterhub']['kernels']['python3']['type'] = 'python'
default['jupyterhub']['kernels']['python3']['install'] = true
default['jupyterhub']['kernels']['python3']['python_version'] = 'python3'
default['jupyterhub']['kernels']['python3']['kernel_name'] = 'python3'
default['jupyterhub']['kernels']['python3']['kernel_displayname'] = 'Python 3'
default['jupyterhub']['kernels']['python3']['pips'] = ['pip', 'setuptools', 'wheel', 'ipykernel']
default['jupyterhub']['kernels']['anaconda2']['type'] = 'anaconda'
default['jupyterhub']['kernels']['anaconda2']['install'] = true
default['jupyterhub']['kernels']['anaconda2']['python_version'] = '2.7.14'
default['jupyterhub']['kernels']['anaconda2']['kernel_name'] = 'anaconda2'
default['jupyterhub']['kernels']['anaconda2']['kernel_displayname'] = 'Anaconda 2'
default['jupyterhub']['kernels']['anaconda2']['pips'] = ['pip', 'setuptools', 'wheel', 'ipykernel']
default['jupyterhub']['kernels']['anaconda2']['condas'] = []
default['jupyterhub']['kernels']['anaconda3']['type'] = 'anaconda'
default['jupyterhub']['kernels']['anaconda3']['install'] = true
default['jupyterhub']['kernels']['anaconda3']['python_version'] = '3.6.5'
default['jupyterhub']['kernels']['anaconda3']['kernel_name'] = 'anaconda3'
default['jupyterhub']['kernels']['anaconda3']['kernel_displayname'] = 'Anaconda 3'
default['jupyterhub']['kernels']['anaconda3']['pips'] = ['pip', 'setuptools', 'wheel', 'ipykernel']
default['jupyterhub']['kernels']['anaconda3']['condas'] = []

# anaconda attributes
default['anaconda']['version'] = 'Anaconda3-5.1.0'
case node['anaconda']['version']
when 'Anaconda2-5.1.0'
  default['anaconda']['source']['url'] = 'https://repo.continuum.io/archive/Anaconda2-5.1.0-Linux-x86_64.sh'
  default['anaconda']['source']['checksum'] = '5f26ee92860d1dffdcd20910ff2cf75572c39d2892d365f4e867a611cca2af5b'
when 'Anaconda3-5.1.0'
  default['anaconda']['source']['url'] = 'https://repo.continuum.io/archive/Anaconda3-5.1.0-Linux-x86_64.sh'
  default['anaconda']['source']['checksum'] = '7e6785caad25e33930bc03fac4994a434a21bc8401817b7efa28f53619fa9c29'
end
default['anaconda']['config']['app_dir'] = '/opt/anaconda'
default['anaconda']['config']['channels']['add'] = ['conda-forge']
default['anaconda']['config']['channels']['remove'] = []
default['anaconda']['python2']['ipykernel']['install'] = false
default['anaconda']['python2']['ipykernel']['python_version'] = '2.7.14'
default['anaconda']['python2']['ipykernel']['kernel_name'] = 'anaconda2'
default['anaconda']['python2']['ipykernel']['kernel_displayname'] = 'Anaconda 2'
default['anaconda']['python2']['ipykernel']['pips'] = ['ipykernel']
default['anaconda']['python2']['ipykernel']['condas'] = []
default['anaconda']['python3']['ipykernel']['install'] = false
default['anaconda']['python3']['ipykernel']['python_version'] = '3.6.5'
default['anaconda']['python3']['ipykernel']['kernel_name'] = 'anaconda3'
default['anaconda']['python3']['ipykernel']['kernel_displayname'] = 'Anaconda 3'
default['anaconda']['python3']['ipykernel']['pips'] = ['ipykernel']
default['anaconda']['python3']['ipykernel']['condas'] = []
