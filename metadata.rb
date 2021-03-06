# Encoding: UTF-8

name 'socrata-sensu-server'
maintainer 'Jonathan Hartman'
maintainer_email 'jonathan.hartman@socrata.com'
license 'apache2'
description 'Installs/Configures socrata-sensu-server'
long_description 'Installs/Configures socrata-sensu-server'
version '0.0.1'

source_url 'https://github.com/socrata-cookbooks/socrata-sensu-server'
issues_url 'https://github.com/socrata-cookbooks/socrata-sensu-server/issues'

depends 'consul', '~> 2.1'
depends 'consul-template', '~> 0.10'
depends 'socrata-sensu', '~> 0.0'
depends 'sensu', '~> 2.11'
depends 'uchiwa', '~> 1.2'

supports 'ubuntu'
