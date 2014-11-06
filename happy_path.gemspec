# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'happy_path/version'

Gem::Specification.new do |spec|
  spec.name          = "happy_path"
  spec.version       = HappyPath::VERSION
  spec.authors       = ["danReynolds"]
  spec.email         = ["fnetma2@gmail.com"]
  spec.summary       = %q{Reroute /first or /last to the endpoint for the model's first or last instance.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  # development dependencies
  spec.add_development_dependency 'bundler',             '~> 1.6'
  spec.add_development_dependency 'rake',                '~> 10'
  spec.add_development_dependency 'rails',               '~> 3.2'

  spec.add_development_dependency 'minitest',            '~> 5'
  spec.add_development_dependency 'minitest-reporters'
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-minitest'
  spec.add_development_dependency 'coveralls'
end
