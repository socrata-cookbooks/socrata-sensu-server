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

depends 'socrata-sensu', '~> 0.0'
depends 'uchiwa', '~> 1.2'

supports 'ubuntu'
