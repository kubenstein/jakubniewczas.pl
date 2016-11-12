# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails-assets-angular-utils-disqus/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-assets-angular-utils-disqus"
  spec.version       = RailsAssetsAngularUtilsDisqus::VERSION
  spec.authors       = ["rails-assets.org"]
  spec.description   = "A directive to add a Disqus comments widget to an AngularJS app."
  spec.summary       = "A directive to add a Disqus comments widget to an AngularJS app."
  spec.homepage      = "https://github.com/michaelbromley/angularUtils/tree/master/src/directives/disqus"
  spec.license       = "MIT"

  spec.files         = `find ./* -type f | cut -b 3-`.split($/)
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
