# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'whitelisted_record/version'

Gem::Specification.new do |spec|
  spec.name          = "whitelisted-record"
  spec.version       = WhitelistedRecord::VERSION
  spec.authors       = ["Edgar"]
  spec.email         = ["zorro.ej@gmail.com"]

  spec.summary       = "A simple gem to allow whiteilst methods" 
  spec.description   = "This gem provides a decorator to whitelist methods" 
  spec.homepage      = "https://github.com/ej2015/whitelisted-record.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "activesupport", "~> 5.0"
end
