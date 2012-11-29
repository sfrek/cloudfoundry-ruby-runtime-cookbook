Description
===========

Install support for running Ruby applications on
[Cloud Foundry](http://www.cloudfoundry.org). This also enables support for
Ruby on Rails and Sinatra.

Requirements
============

* Ubuntu

Tested on:

* Ubuntu 10.04
* Ubuntu 12.04

Attributes
==========

* `node['cloudfoundry_ruby_runtime']['ruby_1_8_7_version']` - The exact
version of Ruby 1.8.7 that should be installed. Defaults to `1.8.7-p334`.
* `node['cloudfoundry_ruby_runtime']['ruby_1_9_2_version']` - The exact
version of Ruby 1.9.2 that should be installed. Defaults to `1.9.2-p290`.
* `node['cloudfoundry_ruby_runtime']['bundler_version']` - The exact
version of the Bundler gem that should be installed. Defaults to `1.1.3`.

Usage
=====

Add either `cloudfoundry_ruby_runtime::ruby_1_8_7` or
`cloudfoundry_ruby_runtime::ruby_1_9_2` to the run list of a DEA node to
enable support for Ruby-based applications on that DEA.

Note that other Cloud Foundry components also use Ruby internally; those
cookbooks handle installation of any version of Ruby they require. This
cookbook only manages support for running user applications.
