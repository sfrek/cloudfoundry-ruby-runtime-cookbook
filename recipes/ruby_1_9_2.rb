#
# Cookbook Name:: cloudfoundry-ruby-runtime
# Recipe:: ruby_1_9_2
#
# Copyright 2012, ZephirWorks
# Copyright 2012, Trotter Cashion
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
#

ruby_ver  = node['cloudfoundry_ruby_runtime']['ruby_1_9_2_version']
ruby_path = ruby_bin_path(node['cloudfoundry_ruby_runtime']['ruby_1_9_2_version'])
ruby_exe  = ::File.join(ruby_path, 'ruby')

include_recipe "rbenv"
include_recipe "rbenv::ruby_build"

rbenv_ruby ruby_ver

rbenv_gem "bundler" do
  version node['cloudfoundry_ruby_runtime']['bundler_version']
  ruby_version ruby_ver
end

cloudfoundry_runtime "ruby19" do
  version       ruby_ver.sub('-', '')
  executable    ruby_exe
  version_flag  "-v | cut -d' ' -f2"
  default       true
  frameworks    %w{ rails3 sinatra }
  action :nothing
end.run_action(:create)
