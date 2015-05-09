require 'rubygems'
require 'rack/contrib/try_static'

use Rack::TryStatic, root: 'build', urls: %w[/]
run ->(env) {
  [ 200, { 'Content-Type'  => 'text/html' }, File.open('build/index.html', File::RDONLY) ]
}