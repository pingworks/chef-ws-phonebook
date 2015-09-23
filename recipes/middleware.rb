#
# Cookbook Name:: ws-phonebook
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'ws-phonebook::base'

package 'redis-server'

cookbook_file 'download_and_install.sh' do
  path '/usr/local/bin/download_and_install.sh'
  owner 'root'
  group 'root'
  mode '755'
end

bash 'install bundler' do
  code 'gem install bundler'
  not_if 'test -x /usr/local/bin/bundler'
end
