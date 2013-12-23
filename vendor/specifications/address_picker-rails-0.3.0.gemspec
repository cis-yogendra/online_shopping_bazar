# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "address_picker-rails"
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David DIDIER"]
  s.date = "2013-03-20"
  s.description = "An address picker for Rails with autocompletion and map picking (adapted from https://github.com/sgruhier/jquery-addresspicker)"
  s.email = "c_inconnu2@yahoo.fr"
  s.extra_rdoc_files = ["LICENSE.txt", "README.md"]
  s.files = ["LICENSE.txt", "README.md"]
  s.homepage = "http://github.com/ddidier/address_picker-rails"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.25"
  s.summary = "An address picker with autocompletion and map picking"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["~> 3.2.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3.0"])
      s.add_development_dependency(%q<capybara>, ["~> 2.0.0"])
      s.add_development_dependency(%q<guard>, ["~> 1.6.0"])
      s.add_development_dependency(%q<guard-rspec>, ["~> 2.5.0"])
      s.add_development_dependency(%q<guard-spork>, ["~> 1.5.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 2.13.0"])
      s.add_development_dependency(%q<sqlite3>, ["~> 1.3.0"])
    else
      s.add_dependency(%q<rails>, ["~> 3.2.0"])
      s.add_dependency(%q<bundler>, ["~> 1.3.0"])
      s.add_dependency(%q<capybara>, ["~> 2.0.0"])
      s.add_dependency(%q<guard>, ["~> 1.6.0"])
      s.add_dependency(%q<guard-rspec>, ["~> 2.5.0"])
      s.add_dependency(%q<guard-spork>, ["~> 1.5.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<rspec-rails>, ["~> 2.13.0"])
      s.add_dependency(%q<sqlite3>, ["~> 1.3.0"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 3.2.0"])
    s.add_dependency(%q<bundler>, ["~> 1.3.0"])
    s.add_dependency(%q<capybara>, ["~> 2.0.0"])
    s.add_dependency(%q<guard>, ["~> 1.6.0"])
    s.add_dependency(%q<guard-rspec>, ["~> 2.5.0"])
    s.add_dependency(%q<guard-spork>, ["~> 1.5.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<rspec-rails>, ["~> 2.13.0"])
    s.add_dependency(%q<sqlite3>, ["~> 1.3.0"])
  end
end
