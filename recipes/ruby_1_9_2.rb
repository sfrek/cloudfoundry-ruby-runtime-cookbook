node.default[:cloudfoundry_dea][:runtimes][:ruby19][:executable]   = File.join(node[:rbenv][:system_prefix], "rbenv", "versions", node[:cloudfoundry_ruby_runtime][:ruby_1_9_2_version], "bin", "ruby")
node.default[:cloudfoundry_dea][:runtimes][:ruby19][:version]      = node[:cloudfoundry_ruby_runtime][:ruby_1_9_2_version].sub('-', '')

include_recipe "rbenv"

rbenv_ruby node.cloudfoundry_ruby_runtime.ruby_1_9_2_version
