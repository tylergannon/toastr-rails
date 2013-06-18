# encoding: utf-8

require 'rubygems'
require 'bundler'
require "bundler/gem_tasks"
require 'rake/version_task'
Rake::VersionTask.new

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
  gem.version     = File.open('VERSION').read
  gem.authors     = ["Tyler Gannon"]
  gem.email       = ["tgannon@gmail.com"]
  gem.homepage    = "https://github.com/tylergannon/toastr-rails"
  gem.summary     = "Toastr: Simple javascript toast notifications"
  gem.description = "Toastr: Simple javascript toast notifications, plugged into the rails asset pipeline."

  gem.required_rubygems_version = ">= 1.3.6"

  gem.add_runtime_dependency "railties", ">= 3.1.0"
  gem.add_development_dependency "bundler", ">= 1.1.3"
  gem.add_development_dependency "jeweler", ">= 1.8.3"
  gem.add_development_dependency "version"

  gem.files        = `git ls-files`.split("\n").reject { |f| f =~ /^tests/ || f =~ /\A\./ }
  gem.require_path = 'lib'
end

Jeweler::RubygemsDotOrgTasks.new

namespace :submodules do
  desc "Initialize git submodules"
  task :init do
    system "git submodule init"
    system "git submodule update"
  end
end

namespace :toastr do
  desc "Update Toastr"
  task :update => 'submodules:init' do
    files = {
      File.join('toastr', 'toastr.min.js') => File.join('vendor', 'assets', 'javascripts', 'toastr.min.js'),
      File.join('toastr', 'toastr.min.css') => File.join('vendor', 'assets', 'stylesheets', 'toastr.min.css')
    }
    
    files.each do |source, destination|
      cp source, destination, verbose: true
      system "git add '#{destination}'"
    end
    
    version = File.open(File.join('toastr', 'nuget', 'content', 'scripts', 'toastr.js')).read.match(/version\s+\=\s+['"]?([\d\.]+)/i)[1]
    if version
      ENV['VERSION'] = version
      Rake::Task["version:create"].invoke
      system "git add VERSION"
      puts "Updated toastr and bumped version to #{version}"
      system "git commit -m 'Updated toastr and bumped version to #{version}'"
    end
  end
end

task :default => :test

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "toastr-rails #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
