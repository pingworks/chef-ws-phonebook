#
# Cookbook Name:: ws_phonebook
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'ws_phonebook::base'

package 'git'
package 'libssl-dev'
package 'build-essential'
package 'ruby2.1-dev'

bash 'install fpm' do
  code 'gem install fpm'
  not_if 'test -x /usr/local/bin/fpm'
end
