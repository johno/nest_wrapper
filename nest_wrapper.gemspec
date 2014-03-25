# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nest_wrapper/version'

Gem::Specification.new do |spec|
  spec.name          = "nest_wrapper"
  spec.version       = NestWrapper::VERSION
  spec.authors       = ["John Otander"]
  spec.email         = ["johnotander@gmail.com"]
  spec.summary       = %q{A wrapper to a wrapper for the nest thermostat API.}
  spec.description   = %q{A wrapper to a wrapper for the nest thermostat API.}
  spec.homepage      = "https://github.com/johnotander/nest_wrapper"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'nest_thermostat'

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
