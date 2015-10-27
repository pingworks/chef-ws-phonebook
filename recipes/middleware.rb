#
# Cookbook Name:: ws_phonebook
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'ws_phonebook::base'

package 'redis-server'
