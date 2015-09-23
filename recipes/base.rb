apt_repository 'brightbox-ppa' do
  uri 'http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu'
  distribution 'trusty'
  components ['main']
  keyserver 'keyserver.ubuntu.com'
  key 'C3173AA6'
  action :add
end

node.force_override['apt']['periodic_update_min_delay'] = 0
include_recipe 'apt'

package 'software-properties-common'

package 'ruby2.1'
package 'ruby2.1-dev'

cookbook_file 'sudoers-jenkins' do
  path '/etc/sudoers.d/jenkins'
  owner 'root'
  group 'root'
  mode '644'
end
