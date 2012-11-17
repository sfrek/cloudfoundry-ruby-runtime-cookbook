ruby_ver  = node['cloudfoundry_ruby_runtime']['ruby_1_9_2_version']
ruby_exe  = ruby_bin_path(node['cloudfoundry_ruby_runtime']['ruby_1_9_2_version'])

include_recipe "rbenv"
include_recipe "rbenv::ruby_build"

rbenv_ruby ruby_ver

rbenv_gem "bundler" do
  ruby_version ruby_ver
end

cloudfoundry_runtime "ruby19" do
  version       ruby_ver.sub('-', '')
  executable    ruby_exe
  version_flag  "-v | cut -d' ' -f2"
  default       true
end
