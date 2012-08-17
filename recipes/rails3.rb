template File.join(node['cloudfoundry']['staging_manifests_dir'], "rails3.yml") do
  source "rails3.yml.erb"
  owner  node['cloudfoundry']['user']
  mode   "0644"
  variables(
    :ruby_1_8_7_runtime => node['cloudfoundry_dea']['runtimes']['ruby18'],
    :ruby_1_9_2_runtime => node['cloudfoundry_dea']['runtimes']['ruby19']
  )
end
