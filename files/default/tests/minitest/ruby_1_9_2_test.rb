require File.expand_path('../support/helpers', __FILE__)

describe 'cloudfoundry-ruby-runtimes::ruby_1_9_2' do
  include Helpers::CloudfoundryRubyRuntime

  it 'installs ruby 1.9.2 in rbenv' do
    directory("/opt/rbenv/versions/#{node['cloudfoundry_ruby_runtime']['ruby_1_9_2_version']}").must_exist
  end
end
