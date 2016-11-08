# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails-assets-showdown/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-assets-showdown"
  spec.version       = RailsAssetsShowdown::VERSION
  spec.authors       = ["rails-assets.org"]
  spec.description   = "JavaScript port of Markdown"
  spec.summary       = "JavaScript port of Markdown"
  spec.homepage      = "https://github.com/showdownjs/showdown"
  spec.license       = "https://github.com/showdownjs/showdown/blob/master/license.txt"

  spec.files         = `find ./* -type f | cut -b 3-`.split($/)
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
