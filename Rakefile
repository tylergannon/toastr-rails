# encoding: utf-8

require File.expand_path('../lib/toastr/rails/version', __FILE__)

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name        = "toastr-rails"
  gem.version     = Toastr::Rails::VERSION
  gem.authors     = ["Tyler Gannon"]
  gem.email       = ["tgannon@gmail.com"]
  gem.homepage    = "https://github.com/CodeSeven/toastr"
  gem.summary     = "Toastr: Simple javascript toast notifications"
  gem.description = "Toastr: Simple javascript toast notifications, plugged into the rails asset pipeline."

  gem.required_rubygems_version = ">= 1.3.6"

  gem.add_runtime_dependency "railties", ">= 3.1.0"
  gem.add_development_dependency "bundler", "~> 1.1.3"
  gem.add_development_dependency "jeweler", "~> 1.8.3"

  gem.files        = `git ls-files`.split("\n").reject { |f| f =~ /^tests/ }
  gem.require_path = 'lib'
end
Jeweler::RubygemsDotOrgTasks.new

task :default => :test

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "toastr-rails #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
