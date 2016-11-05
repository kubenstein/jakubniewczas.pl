# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails-assets-angular-translate/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-assets-angular-translate"
  spec.version       = RailsAssetsAngularTranslate::VERSION
  spec.authors       = ["rails-assets.org"]
  spec.description   = "A translation module for AngularJS"
  spec.summary       = "A translation module for AngularJS"
  spec.homepage      = "https://github.com/PascalPrecht/bower-angular-translate"

  spec.files         = `find ./* -type f | cut -b 3-`.split($/)
  spec.require_paths = ["lib"]

  spec.add_dependency "rails-assets-angular", ">= 1.2.26", "<= 1.4"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
