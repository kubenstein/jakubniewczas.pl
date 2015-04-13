require 'rubygems'
require 'rack/contrib/try_static'
require 'rack/rewrite'

use Rack::TryStatic, root: 'build', urls: %w[/], try: ['.html', 'index.html', '/index.html']
use Rack::Rewrite do
  r301 %r{(.*)}, '/'
end
run ->(env) {}