# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)
require "initialize_as_verbose/version"

Gem::Specification.new do |spec|
  spec.name        = "initialize_as_verbose"
  spec.version     = InitializeAsVerbose::VERSION
  spec.authors     = ["Michael de Silva"]
  spec.email       = ["michael@mwdesilva.com"]
  spec.homepage    = "http://mwdesilva.com"
  spec.summary     = "Boot Rails verbosely with initializer details."
  spec.description = spec.summary
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  spec.required_ruby_version = '>= 1.9.3'
  spec.add_dependency "rails", "~> 3.2.13"
  spec.add_development_dependency "pry"
end
