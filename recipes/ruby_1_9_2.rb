node.default['cloudfoundry_dea']['runtimes']['ruby19']['executable']  = ruby_bin_path(node['cloudfoundry_ruby_runtime']['ruby_1_9_2_version'])
node.default['cloudfoundry_dea']['runtimes']['ruby19']['version']     = node['cloudfoundry_ruby_runtime']['ruby_1_9_2_version'].sub('-', '')

include_recipe "rbenv"
include_recipe "rbenv::ruby_build"

rbenv_ruby node['cloudfoundry_ruby_runtime']['ruby_1_9_2_version']

rbenv_gem "bundler" do
  ruby_version node['cloudfoundry_ruby_runtime']['ruby_1_9_2_version']
end
