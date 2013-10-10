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

package "groonga-tokenizer-mecab" do
end

node.groonga.mecab.dictionaries.each do |dictionary|
  package dictionary do
  end
end

unless node.groonga.mecab.dictionary_path.nil?
  if node.groonga.mecab.dictionary_path == 'auto'
    execute "change-mecab-dictionary" do
      command "update-alternatives --auto mecab-dictionary"
      not_if "update-alternatives --query mecab-dictionary | grep '^Status: auto$'"
    end
  else
    execute "change-mecab-dictionary" do
      command "update-alternatives --set mecab-dictionary #{node.groonga.mecab.dictionary_path}"
      not_if "update-alternatives --query mecab-dictionary | grep '^Value: #{node.groonga.mecab.dictionary_path}$'"
    end
  end
end
