# Encoding: UTF-8
#
# Redis access will normally be through AWS ElastiCache, but install it locally
# for testing

include_recipe 'redisio'

service 'redis-server' do
  action [:stop, :disable]
end

include_recipe 'redisio::enable'
include_recipe 'hosts_file'

hosts_file_entry node['ipaddress'] do
  hostname "redis.sensu.#{node.chef_environment}.socrata.net"
  comment 'Fake out Sensu to use Redis on localhost'
end

include_recipe 'socrata-sensu-server'
