# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "toastr-rails"
  s.version = "2.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tyler Gannon"]
  s.date = "2013-09-18"
  s.description = "Toastr: Simple javascript toast notifications, plugged into the rails asset pipeline."
  s.email = ["tgannon@gmail.com"]
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    "GPL-LICENSE.txt",
    "Gemfile",
    "Gemfile.lock",
    "MIT-LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "lib/toastr-rails.rb",
    "lib/toastr/rails.rb",
    "lib/toastr/rails/engine.rb",
    "toastr-rails.gemspec",
    "vendor/assets/javascripts/toastr.js",
    "vendor/assets/stylesheets/toastr.css"
  ]
  s.licenses = ['MIT', 'GPL-2']
  s.homepage = "https://github.com/tylergannon/toastr-rails"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.1.2"
  s.summary = "Toastr: Simple javascript toast notifications"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
      s.add_dependency(%q<toastr-rails>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 1.3.0"])
      s.add_development_dependency(%q<jeweler>, [">= 2.0.1"])
      s.add_development_dependency(%q<version>, [">= 0"])
      s.add_runtime_dependency(%q<railties>, [">= 3.2.6"])
    end
  else
    s.add_dependency(%q<toastr-rails>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 1.3.0"])
    s.add_dependency(%q<jeweler>, [">= 2.0.1"])
    s.add_dependency(%q<railties>, [">= 3.2.6"])
    s.add_dependency(%q<version>, [">= 0"])
  end
end

