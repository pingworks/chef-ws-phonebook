#
# Cookbook Name:: ws-phonebook
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'ws-phonebook::base'

package 'git'
package 'libssl-dev'
package 'build-essential'

bash 'install fpm' do
  code 'gem install fpm'
  not_if 'test -x /usr/local/bin/fpm'
end

bash 'install bundler' do
  code 'gem install bundler'
  not_if 'test -x /usr/local/bin/bundler'
end
