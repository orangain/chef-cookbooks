groonga Cookbook
================

This cookbook installs and configures groonga. Groonga is an
open-source fulltext search engine and column store.

Requirements
------------

#### Platform

- Debian GNU/Linux
- Ubuntu
- CentOS
- Scientific Linux
- Amazon Linux
- Red Hat
- Fedora
- FreeBSD
- Windows
- Mac OS X

#### Packages

- `apt` - for deb based package system
- `yum` - for RPM based package system
- `homebrew` - for Mac OS X

#### Cookbooks

- [apt](https://github.com/opscode-cookbooks/apt)

Attributes
----------

#### httpd.rb

* `node['groonga']['httpd']['user']` - User that httpd run as. Default is `groonga`.
* `node['groonga']['httpd']['group']` - Group for httpd. Default is `groonga`
* `node['groonga']['httpd']['address']` - Address for monitoring httpd. Default is `127.0.0.1`.
* `node['groonga']['httpd']['port']` - Port to listen. Default is `10041`.
* `node['groonga']['httpd']['database']` - Location of the database. Default is `/var/lib/groonga/db/db`.
* `node['groonga']['httpd']['log_path']` - Location for access logs. Default is `/var/log/groonga/groonga.log` or `/var/log/groonga/httpd/access.log` depending on platform.
* `node['groonga']['httpd']['query_log_path']` - Location for query logs. Default is `/var/log/groonga/query.log` or `/var/log/groonga/httpd/access.log` depending on platform.
* `node['groonga']['httpd']['protocol']` - Protocol to use. Default is `http`.
* `node['groonga']['httpd']['grn_query_expander_tsv_synonyms_file']` - Location of the TSV synonyms file. Default is `/usr/share/groonga/synonyms.tsv`.
* `node['groonga']['httpd']['status_timeout']` - Timeout seconds used when monitoring httpd status. Default is `3`.
* `node['groonga']['httpd']['enable']` - Whether to enable the daemon only available on Debian platform family. Default is `yes`.
* `node['groonga']['httpd']['worker_processes']` - Number of worker processes. Default is `1`.
* `node['groonga']['httpd']['worker_connections']` - Number of worker connections. Default is `1024`.
* `node['groonga']['httpd']['keepalive_timeout']` - Keepalive timeout seconds. Default is `65`.
* `node['groonga']['httpd']['groonga_database_auto_create']` - Whether to create a groonga database automatically if the groonga database doesn't exist. Default is `on`.

#### server-gqtp.rb

* `node['groonga']['server-gqtp']['user']` - User that server-gqtp run as. Default is `groonga`.
* `node['groonga']['server-gqtp']['group']` - Group for server-gqtp. Default is `groonga`.
* `node['groonga']['server-gqtp']['address']` - Address to bind. Default is `127.0.0.1`.
* `node['groonga']['server-gqtp']['port']` - Port to bind. Default is `10043`.
* `node['groonga']['server-gqtp']['database']` - Location of the database. Default is `/var/lib/groonga/db/db`.
* `node['groonga']['server-gqtp']['log_path']` - Location for logs. Default is `/var/log/groonga/groonga-gqtp.log`.
* `node['groonga']['server-gqtp']['query_log_path']` - Location for query logs. Default is `/var/log/groonga/query-gqtp.log`.
* `node['groonga']['server-gqtp']['protocol']` - Protocol to use. Default is `gqtp`.
* `node['groonga']['server-gqtp']['grn_query_expander_tsv_synonyms_file']` - Location of the TSV synonyms file. Default is `/usr/share/groonga/synonyms.tsv`. Default is `/usr/share/groonga/synonyms.tsv`.
* `node['groonga']['server-gqtp']['enable']` - Whether to enable the daemon only available on Debian platform family. Default is `yes`.

#### server-http.rb

* `node['groonga']['server-http']['user']` - User that server-http run as. Default is `groonga`.
* `node['groonga']['server-http']['group']` - Group for server-http. Default is `groonga`.
* `node['groonga']['server-http']['address']` - Address to bind. Default is `127.0.0.1`.
* `node['groonga']['server-http']['port']` - Port to bind. Default is `10041`.
* `node['groonga']['server-http']['database']` - Location of the database. Default is `/var/lib/groonga/db/db`.
* `node['groonga']['server-http']['log_path']` - Location for logs. Default is `/var/log/groonga/groonga-http.log`.
* `node['groonga']['server-http']['query_log_path']` - Location for query logs. Default is `/var/log/groonga/query-http.log`.
* `node['groonga']['server-http']['protocol']` - Protocol to use. Default is `http`.
* `node['groonga']['server-http']['grn_query_expander_tsv_synonyms_file']` - Location of the TSV synonyms file. Default is `/usr/share/groonga/synonyms.tsv`.
* `node['groonga']['server-http']['status_timeout']` - Timeout seconds used when sending command to server-http. Default is `5`.
* `node['groonga']['server-http']['enable']` - Whether to enable the daemon only available on Debian platform family. Default is `yes`.

#### tokenizer-mecab.rb

* `node['groonga']['mecab']['dictionaries']` - List of dictionary packages to install. Default is `["mecab-naist-jdic"]`

Usage
-----

#### groonga::default
TODO: Write usage instructions for each cookbook.

e.g.
Just include `groonga` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[groonga]"
  ]
}
```

Contributing
------------

e.g.
1. Fork the repository on GitHub
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------

License: Apache 2.0

Copyright 2013 Kouhei Sutou <kou@clear-code.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

Authors: Kouhei Sutou <kou@clear-code.com>
