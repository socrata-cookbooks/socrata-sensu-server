# Encoding: UTF-8

source 'https://supermarket.chef.io'

metadata

cookbook 'socrata-sensu', github: 'socrata-cookbooks/socrata-sensu'

group :integration do
  cookbook 'socrata-sensu-server_test',
           path: 'test/fixtures/cookbooks/socrata-sensu-server_test'
end
