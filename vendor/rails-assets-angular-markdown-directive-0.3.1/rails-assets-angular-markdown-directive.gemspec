# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails-assets-angular-markdown-directive/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-assets-angular-markdown-directive"
  spec.version       = RailsAssetsAngularMarkdownDirective::VERSION
  spec.authors       = ["rails-assets.org"]
  spec.description   = ""
  spec.summary       = ""
  spec.homepage      = "https://github.com/btford/angular-markdown-directive"

  spec.files         = `find ./* -type f | cut -b 3-`.split($/)
  spec.require_paths = ["lib"]

  spec.add_dependency "rails-assets-angular", ">= 1.0.8", "< 2"
  spec.add_dependency "rails-assets-angular-sanitize", ">= 1.0.8", "< 2"
  spec.add_dependency "rails-assets-showdown", "~> 0.3.1"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
