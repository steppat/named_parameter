# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{named_parameter}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Hugo Roque (a.k.a HugoLnx)"]
  s.date = %q{2011-05-12}
  s.description = %q{Allows named parameter in ruby}
  s.email = %q{hugolnx@gmail.com}
  s.extra_rdoc_files = [
    "README"
  ]
  s.files = [
    "Gemfile",
    "README",
    "Rakefile",
    "lib/.named_parameter.rb.swo",
    "lib/named_parameter.rb",
    "lib/named_parameter/error.rb",
    "lib/named_parameter/errors.rb",
    "lib/named_parameter/errors/required_parameters.rb",
    "lib/named_parameter/errors/undefined_parameters.rb",
    "lib/named_parameter/named_method.rb",
    "lib/named_parameter/named_method_transmuter.rb",
    "lib/named_parameter/named_parameter.rb",
    "lib/named_parameter/parameters.rb",
    "spec/features/collective_named_methods_feature_spec.rb",
    "spec/features/individual_named_method_feature_spec.rb",
    "spec/interfaces/errors_interface.rb",
    "spec/spec_helper.rb",
    "spec/support/interface_helper.rb",
    "spec/unit/error_spec.rb",
    "spec/unit/errors/required_parameters_spec.rb",
    "spec/unit/errors/undefined_parameters_spec.rb",
    "spec/unit/named_method_spec.rb",
    "spec/unit/named_method_transmuter_spec.rb"
  ]
  s.homepage = %q{http://github.com/hugolnx/named_parameter}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Allows named parameter in ruby}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.0"])
  end
end
