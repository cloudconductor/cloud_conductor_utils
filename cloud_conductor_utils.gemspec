# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cloud_conductor_utils/version'

Gem::Specification.new do |spec|
  spec.name          = "cloud_conductor_utils"
  spec.version       = CloudConductorUtils::VERSION
  spec.authors       = ["TIS Inc."]
  spec.email         = ["ccndctr@gmail.com"]
  spec.summary       = %q{Utilities for CloudConductor Patterns}
  spec.description   = %q{Utilities for CloudConductor Patterns support to build patterns.}
  spec.homepage      = "http://cloudconductor.org/"
  spec.license       = "Apache License, Version v2.0"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rubocop"

  spec.add_dependency "rest-client"
  spec.add_dependency "json"
  spec.add_dependency "base64"
end
