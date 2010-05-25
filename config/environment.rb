RAILS_GEM_VERSION = '2.3.8' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

require 'extensions/array' # needs to load before initializers

Rails::VendorGemSourceIndex.silence_spec_warnings = true

Rails::Initializer.run do |config|
  config.load_paths += Dir["#{RAILS_ROOT}/vendor/gems/**"].map do |dir| 
    File.directory?(lib = "#{dir}/lib") ? lib : dir
  end

  # no regular words or you'll be exposed to dictionary attacks.
  config.action_controller.session = {
    :key => '_techvalley_rb_session',
    :secret      => 'f4b59e36768ec8c75c4c4fd636488ad97ea0878b2473dd3ebcf5990bdcd13febdc5f3a56ae5e0a534fe49acfa59ddfdeaf800531cfe3a75a129d5fa39206c0cf'
  }

  config.gem 'BlueCloth',
    :lib     => 'bluecloth'
  config.gem 'RedCloth',
    :lib     => 'redcloth',
    :version => '> 3.0.4'
  config.gem 'builder',
    :version => '2.1.2'
  config.gem 'dancroak-twitter-search',
    :version => "0.5.5",
    :source  => 'http://gems.github.com',
    :lib     => 'twitter_search'
  config.gem 'gravtastic',
    :version => '>= 2.1.0'
  config.gem 'haml',
    :version => '2.1.0'
  config.gem "json",
    :version => '>=1.1.7'
  config.gem 'has_markup',
    :version => '0.1.5'
  config.gem "thoughtbot-clearance", 
    :lib     => 'clearance', 
    :source  => 'http://gems.github.com', 
    :version => '0.6.5'
  config.gem 'thoughtbot-pacecar',
    :lib     => "pacecar",
    :source  => 'http://gems.github.com', 
    :version => '1.1.5'
  config.gem "yfactorial-utility_scopes",
    :lib     => "utility_scopes",
    :source  => 'http://gems.github.com', 
    :version => '0.2.2'
  config.gem "josevalim-inherited_resources",
    :lib     => "inherited_resources",
    :version => "0.8.5"
  config.gem "dancroak-le-git",
    :lib     => "le_git",
    :version => "0.0.5",
    :source  => "http://gems.github.com"
  config.gem 'taf2-curb', :lib => 'curb', :version => '0.2.8.0' # feezirra would normally depend on this, but doesn't depend a working it works with
  config.gem "technicalpickles-feedra",
    :lib     => "feedra",
    :version => "0.1.1"
  config.gem "will_paginate",
    :version => "2.3.11"

  config.gem 'chronic'

  config.gem 'truncate_html',
    :source => 'http://gemcutter.org'
end

DO_NOT_REPLY = "info@techvalleyrb.org"
