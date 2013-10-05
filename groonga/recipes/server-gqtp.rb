# Cookbook Name:: groonga
# Recipe:: default
#
# Copyright 2013 Kouhei Sutou <kou@clear-code.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include_recipe "groonga::repository"

package "groonga-server-gqtp" do
end

service "groonga-server-gqtp" do
  supports :restart => true, :reload => true, :status => true
  action [:enable, :start]
end

case node['platform_family']
when "debian"
  template "/etc/default/groonga-server-gqtp" do
    owner "root"
    group "root"
    mode "0644"
    notifies :restart, "service[groonga-server-gqtp]"
  end
when "rhel", "fedora"
  template "/etc/sysconfig/groonga-server-gqtp" do
    owner "root"
    group "root"
    mode "0644"
    notifies :restart, "service[groonga-server-gqtp]"
  end
end
