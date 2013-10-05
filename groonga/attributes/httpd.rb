default['groonga']['httpd']['user'] = 'groonga'
default['groonga']['httpd']['group'] = 'groonga'
default['groonga']['httpd']['address'] = '127.0.0.1'
default['groonga']['httpd']['port'] = '10041'
default['groonga']['httpd']['database'] = '/var/lib/groonga/db/db'
case node['platform_family']
when "debian"
  default['groonga']['httpd']['log_path'] = '/var/log/groonga/groonga.log'
  default['groonga']['httpd']['query_log_path'] = '/var/log/groonga/query.log'
when "rhel", "fedora"
  default['groonga']['httpd']['log_path'] = '/var/log/groonga/httpd/access.log'
  default['groonga']['httpd']['query_log_path'] = '/var/log/groonga/httpd/access.log'
end
default['groonga']['httpd']['protocol'] = 'http'
default['groonga']['httpd']['grn_query_expander_tsv_synonyms_file'] = '/usr/share/groonga/synonyms.tsv'
default['groonga']['httpd']['status_timeout'] = '3'
default['groonga']['httpd']['enable'] = 'yes'

default['groonga']['httpd']['worker_processes'] = '1'
default['groonga']['httpd']['worker_connections'] = '1024'
default['groonga']['httpd']['keepalive_timeout'] = '65'
default['groonga']['httpd']['groonga_database_auto_create'] = 'on'
