Socrata Sensu Server Cookbook
=============================
[![Build Status](https://img.shields.io/travis/socrata-cookbooks/socrata-sensu-server.svg)][travis]
[![Code Climate](https://img.shields.io/codeclimate/github/socrata-cookbooks/socrata-sensu-server.svg)][codeclimate]
[![Coverage Status](https://img.shields.io/coveralls/socrata-cookbooks/socrata-sensu-server.svg)][coveralls]

[travis]: https://travis-ci.org/socrata-cookbooks/socrata-sensu-server
[codeclimate]: https://codeclimate.com/github/socrata-cookbooks/socrata-sensu-server
[coveralls]: https://coveralls.io/r/socrata-cookbooks/socrata-sensu-server

An opinionated wrapper cookbook for configuring a Sensu server.

Requirements
============

This cookbook uses `socrata-sensu` as its base which, in turn, uses `sensu`. It
also makes use of the `uchiwa` community cookbook. It is currently tested
against Ubuntu 14.04 only.

Usage
=====

Add the default recipe to your run_list.

Recipes
=======

***default***

Installs Sensu, starts the server and API services, and installs Uchiwa.

Attributes
==========

***default***

Sets the version of Uchiwa to install. Other attributes are inherited from the
`socrata-sensu` cookbook.

Contributing
============

Pull requests are welcome, though this cookbook is intentionally opinionated
for our purposes. Not all PRs will be accepted.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Add tests for the new feature; ensure they pass (`rake`)
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create a new Pull Request

License & Authors
=================
- Author: Jonathan Hartman <jonathan.hartman@socrata.com>

Copyright 2016, Socrata, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
