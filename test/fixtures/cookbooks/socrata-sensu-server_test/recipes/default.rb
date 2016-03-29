# Encoding: UTF-8
#
# Redis access will normally be through AWS ElastiCache, but install it locally
# for testing

include_recipe 'redisio'
include_recipe 'socrata-sensu-server'
