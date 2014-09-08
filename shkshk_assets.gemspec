# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shkshk_assets/version'

Gem::Specification.new do |spec|
  spec.name          = "shkshk_assets"
  spec.version       = ShkshkAssets::VERSION
  spec.authors       = ["Vasily Polovnyov"]
  spec.email         = ["vasily@polovnyov.ru"]
  spec.summary       = %q{shkshk.ru shared assets}
  spec.description   = %q{shkshk.ru shared assets}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "stylus"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "sprockets"
  spec.add_development_dependency "sprockets-helpers"
end
