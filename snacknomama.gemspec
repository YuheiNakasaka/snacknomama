# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'snacknomama/version'

Gem::Specification.new do |spec|
  spec.name          = "snacknomama"
  spec.version       = Snacknomama::VERSION
  spec.authors       = ["YuheiNakasaka"]
  spec.email         = ["yuhei.nakasaka@gmail.com"]

  spec.summary       = %q{Generate snacknomama life by random}
  spec.description   = %q{Generate snacknomama life by random}
  spec.homepage      = "https://github.com/YuheiNakasaka/snacknomama"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = "snacknomama"
  spec.require_paths = ["lib"]

  spec.add_dependency "gimei"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
